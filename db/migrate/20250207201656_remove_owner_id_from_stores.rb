class RemoveOwnerIdFromStores < ActiveRecord::Migration[8.0]
  def change
    remove_column :stores, :owner_id, :integer
  end
end
