class CreatePowerMods < ActiveRecord::Migration[7.0]
  def change
    create_table :power_mods do |t|
      t.text :name
      t.text :description
      t.references :spark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
