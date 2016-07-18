class AddStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :index
      t.integer :store_number
      t.text :district
      t.text :store_id
      t.integer :total_weight
      t.integer :num_bales
      t.integer :mean_bale_weight
      t.integer :square_feet
    end
  end
end
