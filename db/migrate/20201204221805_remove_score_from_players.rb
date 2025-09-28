class RemoveScoreFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :score, :integer
  end
end
