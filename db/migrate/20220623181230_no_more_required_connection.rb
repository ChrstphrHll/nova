class NoMoreRequiredConnection < ActiveRecord::Migration[7.0]
  def change
    change_column :pilots, :spark_id, :integer, :null => true, foreign_key: true, :default => nil
  end
end
