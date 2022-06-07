class PilotsController < ApplicationController
  def index
    if current_user.nil?
      redirect_to '/users/sign_up'
    end
    @pilots = current_user.pilots
  end

  def show
    p "cur pilo id:"
    p Pilot.find(params[:id]).user_id
    p "cur user id:"
    p current_user.id
    if current_user.id == Pilot.find(params[:id]).user_id
      @pilot = Pilot.find(params[:id])
      @access = true
    else
      @pilot = nil
      @access = false
    end
  end


  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new(pilot_params)

    if @pilot.save
      redirect_to @pilot
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def pilot_params
    params.require(:pilot).permit(:user_id, :name, :call_sign, :bio)
  end

end
