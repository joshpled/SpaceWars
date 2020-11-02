class AddDefaultToWinnerInitials < ActiveRecord::Migration[6.0]
  def change
    change_column :winners, :initials, :string, :default => "AAA"
  end
end
