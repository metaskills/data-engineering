ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  
  let(:new_upload)          { Upload.new }
  let(:new_purchaser)       { Purchaser.new }
  let(:new_item)            { Item.new }
  let(:new_purchaser_item)  { PurchaserItem.new }

  let(:example_input_data)  { upload_data('example_input.tab') }


  protected

  def upload_file(file_name)
    "#{Rails.root}/test/uploads/#{file_name}"
  end

  def upload_data(file_name)
    File.read upload_file(file_name)
  end


end
