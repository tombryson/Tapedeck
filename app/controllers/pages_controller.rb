class PagesController < ApplicationController
  def home
  @tapedecks = Tapedeck.all
  end

end