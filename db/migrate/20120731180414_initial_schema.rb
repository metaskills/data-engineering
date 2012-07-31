class InitialSchema < ActiveRecord::Migration

  # rake db:migrate:redo VERSION=20120731180414
  # Basic tab data structure to import and normalize
  # +---------------------------------------------------------------------------------------------------------------------+
  # | purchaser name   | item description     | item price | purchase count  | merchant address  | merchant name          |
  # +---------------------------------------------------------------------------------------------------------------------+
  # | Snake Plissken   | $10 off $20 of food  | 10.0       | 2               | 987 Fake St       | Bob's Pizza            |
  # | Marty McFly      | $20 Sneakers for $5  | 5.0        | 1               | 123 Fake St       | Sneaker Store Emporium |
  # +---------------------------------------------------------------------------------------------------------------------+

  def up
    create_table :uploads, force: true do |t|
      t.boolean :processed
      t.timestamps
    end
    add_attachment :uploads, :file
    create_table :items, force: true do |t|
      t.string  :description, null: false
      t.decimal :price,       null: false, precision: 8, scale: 2
    end
    create_table :purchasers, force: true do |t|
      t.string :name, null: false
    end
    create_table :purchaser_items, force: true do |t|
      t.integer :purchaser_id, null: false
      t.integer :item_id,      null: false
    end
  end

  def down
    drop_table :uploads rescue nil
    drop_table :items rescue nil
    drop_table :purchasers rescue nil
    drop_table :purchaser_items rescue nil
  end

end


