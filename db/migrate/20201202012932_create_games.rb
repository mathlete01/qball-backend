class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :player
      t.integer :keys_pressed
      t.integer :score

      t.timestamps
    end
  end
end
