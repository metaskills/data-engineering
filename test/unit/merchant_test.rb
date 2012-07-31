require 'test_helper'

class MerchantTest < ActiveSupport::TestCase

  it 'validates presence of name' do
    new_merchant.wont_be :valid?
    new_merchant.errors[:name].join.must_match %r{can't be blank}
  end

  it 'validates presence of address' do
    new_merchant.wont_be :valid?
    new_merchant.errors[:address].join.must_match %r{can't be blank}
  end


end
