class AddDefaultsToShipModel < ActiveRecord::Migration[6.0]
  def change
    change_column :ships, :attack, :integer, :default => 10
    change_column :ships, :defense, :integer, :default => 5
    change_column :ships, :nukes, :integer, :default => 3
  end
end
