class CreateSparks < ActiveRecord::Migration[7.0]
  def change
    create_table :sparks do |t|
      t.string :name
      t.text :flavor

      t.timestamps
    end
  end
end
