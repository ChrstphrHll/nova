class AddSparkToPilot < ActiveRecord::Migration[7.0]
  def change
    add_reference :pilots, :spark, null: true, foreign_key: true, :default => nil
  end
end
