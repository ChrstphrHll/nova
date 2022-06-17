class AddStatsToPilots < ActiveRecord::Migration[7.0]
  def change
    add_column :pilots, :shade, :integer
    add_column :pilots, :sun, :integer
    add_column :pilots, :moon, :integer
  end
end
