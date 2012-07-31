class Purchaser < ActiveRecord::Base
  
  has_many :purchaser_items
  has_many :items, through: :purchaser_items
  
  attr_accessible :name

  validates_presence_of :name


end
