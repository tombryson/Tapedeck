class TapedecksController < ApplicationController
  before_action :check_for_login

  def index
    @tapedecks = @current_user.tapedecks
  end

  def new
    @tapedeck = Tapedeck.new
  end

  def create
    tapedeck = Tapedeck.create tapedeck_params
    @current_user.tapedecks << tapedeck
    redirect_to tapedeck_path
  end

  private
  def tapedeck_params
    params.require(:tapedeck).permit(:name)
  end
end