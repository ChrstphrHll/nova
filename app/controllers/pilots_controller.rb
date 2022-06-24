class PilotsController < ApplicationController
  def index
    if flash[:just_outed]
      redirect_to "/" and return
    end
    if current_user.nil?
      redirect_to '/users/sign_up' and return
    end
    @pilots = current_user.pilots
  end

  def show
    if current_user and current_user.id == Pilot.find(params[:id]).user_id
      @pilot = Pilot.find(params[:id])
      @access = true
    else
      @pilot = nil
      @access = false
    end
  end

  def new
    @pilot = Pilot.new
    @sparks = Spark.all
  end

  def spark_select
    @pilot = Pilot.find(params[:id])
    @sparks = Spark.all
  end

  def edit
    @pilot = Pilot.find(params[:id])
    @sparks = Spark.all
  end

  def edit_sun
    @pilot = Pilot.find(params[:id])
  end 

  def create
    @pilot = Pilot.new(pilot_params)

    if @pilot.save
      redirect_to @pilot
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    @pilot = Pilot.find(params[:id])

    if @pilot.update(pilot_params)
      redirect_to @pilot
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def pilot_params
    params.require(:pilot).permit(:user_id, :name, :call_sign, :pronouns, :description, :bio, :sun, :moon, :shade, :spark_id)
  end
end
