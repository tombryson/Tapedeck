class PagesController < ApplicationController
  def home
    @tapedecks = Tapedeck.all
    @users = User.all
  end
end