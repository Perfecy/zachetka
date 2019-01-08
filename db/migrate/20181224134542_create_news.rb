rails db:migrateclass CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.attachment :image
      t.string :organisator

      t.timestamps
    end
  end
end
