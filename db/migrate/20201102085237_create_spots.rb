class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.text :description
      t.integer :max_campers
      t.boolean :has_power
      t.boolean :has_water
      t.boolean :has_toilet
      t.boolean :has_shower
      t.references :address, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
