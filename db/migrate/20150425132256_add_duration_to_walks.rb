class AddDurationToWalks < ActiveRecord::Migration
  def change
    add_column :walks, :duration, :integer
  end
end
