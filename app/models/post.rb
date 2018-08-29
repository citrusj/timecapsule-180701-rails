class Post < ActiveRecord::Base
    mount_uploader :img_url, ImageUploader
    mount_uploader :img_url2, ImageUploader
    mount_uploader :img_url3, ImageUploader
      
     
     
end
