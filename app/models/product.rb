class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  validates :name,
            :cost,
            :image,
            :description, presence: true

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
