class CreatePilots < ActiveRecord::Migration[7.0]
  def change
    create_table :pilots do |t|
      t.text :name
      t.text :call_sign
      t.text :bio
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
