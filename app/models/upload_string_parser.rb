require 'csv'

class UploadStringParser

  attr_reader :string

  class << self

    def parse(string)
      new(string).parse
    end
    
  end

  def initialize(string)
    @string = string
  end

  def parse
    CSV.parse @string, col_sep: "\t", headers: true do |row|
      purchaser = find_or_create_purchaser(row)
      item = find_or_create_item(row)
      find_or_create_merchant(row)
      create_purchase_record purchaser, item, row
    end
  end


  protected

  def find_or_create_purchaser(row)
    Purchaser.find_or_create_by_name row['purchaser name']
  end

  def find_or_create_item(row)
    atts = {description: row['item description'], price: row['item price']}
    Item.find_by_description(atts[:description]) || Item.create!(atts, without_protection: true)
  end

  def find_or_create_merchant(row)
    atts = {name: row['merchant name'], address: row['merchant address']}
    Merchant.find_by_name(atts[:name]) || Merchant.create!(atts, without_protection: true)
  end

  def create_purchase_record(purchaser, item, row)
    atts = {item_id: item.id, count: row['purchase count']}
    purchaser.purchaser_items.create! atts, without_protection: true
  end

end
