class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader

    validates :description, :season, :climate, presence: true
end
