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
    @filmroll.update roll_params
    redirect_to @filmroll
  end

  def new
    @filmroll = Filmroll.new
  end

  def create
    @filmroll = Filmroll.new roll_params
    @filmroll.save
    redirect_to @filmroll
  end

  def destroy
    @filmroll = Filmroll.find(params[:id])
    @filmroll.destroy
    redirect_to filmrolls_path
  end

  private

  def roll_params
    params.require(:filmroll).permit(:name, :development_notes, :shooting_notes)
  end

end
