class StoreSizes < ActiveRecord::Migration
  def change
    create_table :store_sizes do |t|
      t.integer :index
      t.integer :store_number
      t.integer :square_feet
    end
  end
end
