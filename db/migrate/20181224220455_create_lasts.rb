class CreateLasts < ActiveRecord::Migration[5.1]
  def change
    create_table :lasts do |t|
      t.string :name
      t.string :manager
      t.text :description
      t.datetime :date
      t.string :image

      t.timestamps
    end
  end
end
