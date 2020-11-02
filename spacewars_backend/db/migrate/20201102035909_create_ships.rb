class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.integer :attack
      t.integer :defense
      t.integer :nukes

      t.timestamps
    end
  end
end
