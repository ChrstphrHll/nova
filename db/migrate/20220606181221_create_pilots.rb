class CreatePilots < ActiveRecord::Migration[7.0]
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :call_sign
      t.text :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
