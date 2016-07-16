class Store < ActiveRecord::Base
  validates :index, presence: true
  validates :store_number, presence: true
  validates :district
  validates :store_id, presence: true
  validates :total_weight, presence: true
  validates :num_bales, presence: true
  validates :mean_bale_weight, presence: true
  validates :square_feet, presence: true


  has_many :bales
  has_one :store_size
end
