class RemoveLivesFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :lives, :integer
  end
end
