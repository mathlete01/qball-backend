class PlayersController < ApplicationController
  def index
    # This json what i got back from a get fetch, so it is all the players
    puts('* * * Players: Index endpoint hit')
    render json: Player.all
  end

  def create
    puts('* * * Players: Create endpoint hit')
    # byebug
    player = Player.create
    # Send my newly created player back to the front end as a return
    # This json what i got back from a POST fetch, so it is just the player I posted to the db
    render json: player
  end

  def update
    puts('* * * Players: Update endpoint hit')
    player = Player.find(params['id'])
    player.update(id: params['id'], name: params['name'])
    render json: player
  end

  def destroy
    puts('* * * Players: Destroy endpoint hit')
    player = Player.find(params['id'])
    player.destroy
  end
end
