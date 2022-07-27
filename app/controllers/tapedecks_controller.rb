class TapedecksController < ApplicationController
  before_action :check_for_login

  def index
    @tapedecks = @current_user.tapedecks
  end

  def show
    @tapedeck = Tapedeck.find params[:id]
  end

  def new
    @tapedeck = Tapedeck.new
  end

  def edit
    @tapedeck = Tapedeck.find params[:id]
  end
  
  def create
    tapedeck = Tapedeck.create tapedeck_params
    @current_user.tapedecks << tapedeck
    redirect_to tapedeck
  end
  
  def destroy
    tapedeck = Tapedeck.find params[:id]
    tapedeck.destroy
    redirect_to tapedecks_path
  end

  def update
  tapedeck = Tapedeck.find params[:id]
  tapedeck.update tapedeck_params
  redirect_to tapedeck
  end

  private
  def tapedeck_params
    params.require(:tapedeck).permit(:name)
  end
end