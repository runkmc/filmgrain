class FilmrollsController < ApplicationController

  def index
    @filmrolls = Filmroll.all
  end

  def show
    @filmroll = Filmroll.find(params[:id])
  end

end
