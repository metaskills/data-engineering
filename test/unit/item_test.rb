require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  it 'validates presence of description' do
    new_item.wont_be :valid?
    new_item.errors[:description].join.must_match %r{can't be blank}
  end

  it 'validates presence of price' do
    new_item.wont_be :valid?
    new_item.errors[:price].join.must_match %r{can't be blank}
  end


end
