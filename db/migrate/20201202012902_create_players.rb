class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :lives
      t.integer :score
      t.string :browser_brand
      t.float :browser_ver
      t.string :os_brand
      t.float :os_ver

      t.timestamps
    end
  end
end