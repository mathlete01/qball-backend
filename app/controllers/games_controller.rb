class GamesController < ApplicationController
  # def index
  #   puts('* * * Games: Index endpoint hit')
  #   render json: Game.all, include: :player
  # end

def index
  scope = Game.includes(:player)
              .order(Arel.sql('score IS NULL, score DESC, games.created_at DESC'))
              .limit(100)

  expires_now # optional during dev
  render json: scope.as_json(include: :player)
end


  def show
    game = Game.find(params[:id])
    render json: game, include: :player
  end

  def create
    puts('* * * Games: Create endpoint hit')
    game = Game.new(game_params)

    if game.save
      render json: game, include: :player, status: :created
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  def update
    puts('* * * Games: Update endpoint hit')
    game = Game.find(params[:id])

    if game.update(game_params)
      render json: game, include: :player
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  def destroy
    puts('* * * Games: Destroy endpoint hit')
    game = Game.find(params[:id])
    game.destroy
    head :no_content
  end

  private

  def game_params
    params.require(:game).permit(:keys_pressed, :score, :player_id)
  end
end
