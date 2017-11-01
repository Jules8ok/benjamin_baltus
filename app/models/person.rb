class Person < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end

