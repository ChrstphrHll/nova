class AddDescriptionToPilot < ActiveRecord::Migration[7.0]
  def change
    add_column :pilots, :description, :text
  end
end
