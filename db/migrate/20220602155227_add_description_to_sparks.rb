class AddDescriptionToSparks < ActiveRecord::Migration[7.0]
  def change
    add_column :sparks, :description, :text
  end
end
