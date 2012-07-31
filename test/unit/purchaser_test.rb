require 'test_helper'

class PurchaserTest < ActiveSupport::TestCase

  it 'validates presence of name' do
    new_purchaser.wont_be :valid?
    new_purchaser.errors[:name].join.must_match %r{can't be blank}
  end


end
