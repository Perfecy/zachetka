class CreateFests < ActiveRecord::Migration[5.1]
  def change
    create_table :fests do |t|
      t.string :name
      t.text :description
      t.string :organisator
      t.attachment :image
      t.datetime :date

      t.timestamps
    end
  end
end
