ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  
  let(:new_upload)          { Upload.new }
  let(:new_purchaser)       { Purchaser.new }
  let(:new_item)            { Item.new }
  let(:new_purchaser_item)  { PurchaserItem.new }



end
