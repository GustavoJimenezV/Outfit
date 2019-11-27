class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader

    validates :description, :season, :climate, presence: true

    belongs_to :user
end
