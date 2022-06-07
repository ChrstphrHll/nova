class PilotsController < ApplicationController
  def index
    if current_user.nil?
      redirect_to '/users/sign_up'
    end
    @pilots = current_user.pilots
  end

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new(pilot_params)

    if @pilot.save
      redirect_to @pilot
    else
      p "ahhhhhhh!!!"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def pilot_params
    params.require(:pilot).permit(:user_id, :name, :call_sign, :bio)
  end

end
