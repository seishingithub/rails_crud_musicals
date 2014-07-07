class MusicalsController < ApplicationController

  def index
    @musicals = Musical.all
  end

  def new
    @musical = Musical.new
  end

  def create
    @musical = Musical.create(musical_strong_params)
    if @musical.save
      redirect_to musicals_path
    else
      render root_path
    end
  end

  private
  def musical_strong_params
    params.require(:musical).permit(:name, :actor)

  end

end