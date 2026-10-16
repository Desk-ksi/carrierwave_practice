class Post < ApplicationRecord
  mount_uploaders :images, ImagesUploader
end
