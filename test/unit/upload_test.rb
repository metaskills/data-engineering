require 'test_helper'

class UploadTest < ActiveSupport::TestCase

  let(:new_upload) { Upload.new }

  it 'will not be processed by default' do
    new_upload.wont_be :processed?
  end


end
