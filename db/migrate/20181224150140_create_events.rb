class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :discription
      t.string :organizator
      t.date :date

      t.timestamps
    end
  end
end
