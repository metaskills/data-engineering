require 'test_helper'

class UploadTest < ActiveSupport::TestCase

  it 'will not be processed by default' do
    new_upload.wont_be :processed?
  end

  describe 'With example_input.tab file' do

    before do
      open_upload_file('example_input.tab') do |file|
        new_upload.file = file
        new_upload.save!
      end
    end

    it 'saves the file name' do
      new_upload.file_file_name.must_match 'example_input.tab'
    end

    it 'processes the file' do
      Purchaser.count.must_equal 3
      Item.count.must_equal      3
      Merchant.count.must_equal  3
    end

  end



end
