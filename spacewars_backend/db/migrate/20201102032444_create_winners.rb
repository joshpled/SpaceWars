class CreateWinners < ActiveRecord::Migration[6.0]
  def change
    create_table :winners do |t|
      t.string :initials
      t.integer :score

      t.timestamps
    end
  end
end
