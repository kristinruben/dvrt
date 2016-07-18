class Bale < ActiveRecord::Base
  validates :index, null: false
  validates :bale_time_stamp, null: false
  validates :tag_sn, null: false
  validates :bale_weight, null: false
  validates :bale_weight_scaled, null: false
  validates :tag_rf_reads, null: false
  validates :tag_max_rf_reads, null: false
  validates :total_detection_confidence, null: false
  validates :tag_detection_confidence, null: false
  validates :scale_detection_confidence, null: false
  validates :goby_sn, null: false
end
