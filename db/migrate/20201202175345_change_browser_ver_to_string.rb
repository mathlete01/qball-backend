class ChangeBrowserVerToString < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :browser_ver, :string
  end
end
