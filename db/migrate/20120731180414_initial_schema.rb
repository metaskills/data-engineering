class InitialSchema < ActiveRecord::Migration

  # rake db:migrate:redo VERSION=20120731180414
  
  def up
    create_table :uploads, force: true do |t|
      t.boolean     :processed
      t.timestamps
    end
    add_attachment :uploads, :file
  end

  def down
    drop_table :uploads
  end

end
