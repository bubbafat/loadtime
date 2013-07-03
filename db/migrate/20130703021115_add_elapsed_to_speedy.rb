class AddElapsedToSpeedy < ActiveRecord::Migration
  def change
    add_column :speedies, :elapsed, :integer
  end
end
