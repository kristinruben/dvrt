class AddBales < ActiveRecord::Migration
  def change
    create_table :bales do |t|
      t.integer :index
      t.datetime :bale_time_stamp
      t.text :tag_sn
      t.integer :bale_weight
      t.integer :bale_weight_scaled
      t.integer :tag_rf_reads
      t.integer :tag_max_rf_reads
      t.float :total_detection_confidence
      t.float :tag_detection_confidence
      t.float :scale_detection_confidence
      t.text :goby_sn
    end
  end
end
