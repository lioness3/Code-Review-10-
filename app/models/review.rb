class Review < ApplicationRecord
 belongs_to :product, dependent: :destroy
 validates :author, :rating, presence: true
 validates :content_body, length: { in: 50..250 }
end
