class PlayersController < ApplicationController
  def index
    puts('* * * Players: Index endpoint hit')
    render json: Player.all
  end

  def show
    player = Player.find(params[:id])
    render json: player
  end

  def create
    puts('* * * Players: Create endpoint hit')
    player = Player.new(player_params)

    if player.save
      render json: player, status: :created
    else
      render json: player.errors, status: :unprocessable_entity
    end
  end

  def update
    puts('* * * Players: Update endpoint hit')
    player = Player.find(params[:id])

    if player.update(player_params)
      render json: player
    else
      render json: player.errors, status: :unprocessable_entity
    end
  end

  def destroy
    puts('* * * Players: Destroy endpoint hit')
    player = Player.find(params[:id])
    player.destroy
    head :no_content
  end

  private

  def player_params
    params.require(:player).permit(:name, :lives, :score, :browser_brand, :browser_ver, :os_brand, :os_ver)
  end
end
