class AddImgUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :img_url, :string
    add_column :posts, :img_url2, :string
    add_column :posts, :img_url3, :string
  end
end
