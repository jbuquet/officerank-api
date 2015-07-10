class MatchesController < ApplicationController

  before_action :ensure_match, only: [:show, :update, :destroy]

  def index
    @matches = current_office.matches

    render json: @matches
  end

  def show
    render json: @match
  end

  def create
    @match = Match.create(match_params)

    render json: @match, status: :created
  end

  def update
    @match.update_attributes!(match_params)

    render json: @match
  end

  def destroy
    @match.destroy

    render json: {}, status: :no_content
  end

  protected

  def match_params
    params.require(:match).permit(:date, :office_id,
                                  :player1_id, :player2_id,
                                  :player1_score, :player2_score)
  end

  def ensure_match
    @match = Match.find(params[:id])
  end

end
