class ThrowsController < ApplicationController

  def new
  end

  def throw
    new_game = EstimateGameSituation.new(throw_params[:sign])
    result = new_game.estimate
    redirect_to throw_path, notice: result
  end

  private

  def throw_params
    params.require(:throw).permit(:sign)
  end

end
