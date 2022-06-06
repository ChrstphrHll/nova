class CreateActivePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :active_powers do |t|
      t.string :name
      t.text :description
      t.references :spark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
