class Bale < ActiveRecord::Base
  validates :index, presence: true
  validates :tag_store_id, presence: true
  validates :bale_weight, presence: true
  validates :bale_weight_scaled

  belongs_to :store

  def self.search(query)
    where('name ILIKE ?', "%#{query}%")
  end
end
