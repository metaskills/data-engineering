require 'test_helper'

class UploadStringParserTest < ActiveSupport::TestCase

  describe 'example_input.tab' do

    before { UploadStringParser.parse example_input_data }

    let(:unique_purchaser_name)  { 'Snake Plissken' }
    let(:unique_item_desciption) { '$20 Sneakers for $5' }

    it 'creates unique purchasers' do
      example_input_data.scan(unique_purchaser_name).length.must_equal 2
      Purchaser.where(name: unique_purchaser_name).count.must_equal 1
    end

    it 'creates unique items' do
      example_input_data.scan(unique_item_desciption).length.must_equal 2
      Item.where(description: unique_item_desciption).count.must_equal 1
    end

    it 'creates items with proper attributes' do
      item = Item.find_by_description unique_item_desciption
      item.price.must_equal 5.0
    end

    it 'associates purchasers to item' do
      purchaser = Purchaser.find_by_name 'Snake Plissken'
      purchaser.items.count.must_equal 2
    end

    it 'records the count/quantity for each purchase' do
      purchaser = Purchaser.find_by_name 'Amy Pond'
      purchaser.purchaser_items.count.must_equal 1
      purchaser.purchaser_items.first.count.must_equal 5
    end

  end


end
