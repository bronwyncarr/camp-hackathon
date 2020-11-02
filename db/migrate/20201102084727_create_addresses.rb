class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :postcode
      t.string :integer
      t.string :state

      t.timestamps
    end
  end
end
