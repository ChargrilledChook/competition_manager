class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match, notice: "Successfully created match!"
    else
      render :new, status: :unprocessable_entity, notice: "Invalid Match"
    end
  end

  private

  def match_params
    params.require(:match).permit(:name, :description)
  end
end
