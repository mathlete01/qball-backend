class ChangeOsVerToString < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :os_ver, :string
  end
end
