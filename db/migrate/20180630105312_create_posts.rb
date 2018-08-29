class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :group
      t.text :code
      t.date :fromday
      t.text :content
      t.integer :minute
      t.timestamps null: false
    end
  end
end
