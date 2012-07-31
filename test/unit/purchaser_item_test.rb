require 'test_helper'

class PurchaserItemTest < ActiveSupport::TestCase

  it 'validates presence of foreign keys' do
    new_purchaser_item.wont_be :valid?
    new_purchaser_item.errors[:purchaser_id].join.must_match %r{can't be blank}
    new_purchaser_item.errors[:item_id].join.must_match %r{can't be blank}
  end



end
