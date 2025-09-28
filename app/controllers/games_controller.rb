class GamesController < ApplicationController
  def index
    # This json what i got back from a get fetch, so it is all the players
    puts('* * * Games: Index endpoint hit')
    render json: Game.all, include: :player
  end

  def create
    puts('* * * Games: Create endpoint hit')
    # byebug
    game = Game.create(player_id: params['player_id'])
    # Send my newly created player back to the front end as a return
    # This json what i got back from a POST fetch, so it is just the game I posted to the db
    render json: game
  end

  def update
    puts('* * * Games: Update endpoint hit')
    # byebug
    game = Game.find(params['id'])
    if params['score']
      game.update(score: params['score'])
    else
      player = Player.find_or_create_by(name: params['name'])
      game.update(player_id: player.id)
    end
    # 1-endGame: Just update the score
    # 2-updateGame: Associate player id with game
    render json: game
  end

  def destroy
    puts('* * * Games: Destroy endpoint hit')
    game = Game.find(params['id'])
    game.destroy
  end
end
