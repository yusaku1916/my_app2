class CreateWorks < ActiveRecord::Migration[7.1]
  def change
    create_table :works do |t|
      t.string "content"
      t.string "memo"
      t.date "deadline"
      t.integer "category_id"
      t.timestamps
    end
  end
end
