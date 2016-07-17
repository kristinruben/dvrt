class StoreSize < ActiveRecord::Base
  validates :index, null: false
  validates :store_number, null: false
  validates :square_feet, null: false
end
