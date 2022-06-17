class AddPronounsToPilot < ActiveRecord::Migration[7.0]
  def change
    add_column :pilots, :pronouns, :string
  end
end
