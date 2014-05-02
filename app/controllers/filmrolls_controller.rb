class FilmrollsController < ApplicationController

  def index
    @filmrolls = Filmroll.all
  end

  def show
    @filmroll = Filmroll.find(params[:id])
  end

  def edit
    @filmroll = Filmroll.find(params[:id])
  end

  def update
    @filmroll = Filmroll.find(params[:id])
    roll_params = params.require(:filmroll).permit(:name, :development_notes,
                                                   :shooting_notes)
    @filmroll.update roll_params
    redirect_to @filmroll
  end
end
