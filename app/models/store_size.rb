class StoreSize < ActiveRecord::Base
  self.table_name = "store_size"
  validates :index, null: false
  validates :store_number, null: false
  validates :square_feet, null: false
end
