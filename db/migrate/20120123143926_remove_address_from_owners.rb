class RemoveAddressFromOwners < ActiveRecord::Migration
  def up
    remove_column :owners, :address
  end

  def down
    add_column :owners, :address, :string
  end
end
