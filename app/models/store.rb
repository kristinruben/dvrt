class Store < ActiveRecord::Base
  validates :index, null: false
  validates :store_number, null: false
  validates :district, null: false
  validates :store_id, null: false
  validates :total_weight, null: false
  validates :num_bales, null: false
  validates :mean_bale_weight, null: false
  validates :square_feet, null: false
end
