require 'test_helper'

class PurchaserItemTest < ActiveSupport::TestCase

  it 'defaults count to 1' do
    new_purchaser_item.count.must_equal 1
  end

  it 'validates presence of foreign keys' do
    new_purchaser_item.wont_be :valid?
    new_purchaser_item.errors[:purchaser_id].join.must_match %r{can't be blank}
    new_purchaser_item.errors[:item_id].join.must_match %r{can't be blank}
  end

  it 'validates that count is present and an integer' do
    new_purchaser_item.count = nil
    new_purchaser_item.wont_be :valid?
    new_purchaser_item.errors[:count].join.must_match %r{can't be blank}
    new_purchaser_item.errors[:count].join.must_match %r{not a number}
  end


end
