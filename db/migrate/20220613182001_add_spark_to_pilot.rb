class AddSparkToPilot < ActiveRecord::Migration[7.0]
  def change
    add_reference :pilots, :spark, null: false, foreign_key: true, :default => 1
  end
end
