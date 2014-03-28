class FilmrollsController < ApplicationController

  def index
    @filmrolls = Filmroll.all
  end

end
