class PlayersController < ApplicationController

  before_action :ensure_player, only: [:show, :update, :destroy]

  def index
    @players = current_office.players

    render json: @players
  end

  def show
    render json: @player
  end

  def create
    @player = Player.create(player_params)

    render json: @player, status: :created
  end

  def update
    @player.update_attributes!(player_params)

    render json: @player
  end

  def destroy
    @player.destroy

    render json: {}, status: :no_content
  end

  protected

  def player_params
    params.require(:player).permit(:email, :username, :encrypted_password)
  end

  def ensure_player
    @player = Player.find(params[:id])
  end

end
