class AddOwnerReferenceToCars < ActiveRecord::Migration
  def change
    add_column :cars, :owner_id, :integer
    add_index :cars, :owner_id
  end
end
