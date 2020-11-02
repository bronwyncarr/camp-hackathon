class RemoveIntegerFromAddress < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :integer, :string
  end
end
