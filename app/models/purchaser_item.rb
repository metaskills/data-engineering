class PurchaserItem < ActiveRecord::Base
  
  belongs_to :purchaser
  belongs_to :item

  validates_presence_of :purchaser_id, :item_id
  

end
