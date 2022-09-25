class Product < ApplicationRecord
  validates :title,:description,:price, presence:true
  validates :title ,uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {with: /([A-Za-z]+[0-9]*(\.)(jpg|png|gif))\b/,message: 'must be a URL for GIF, JPG or PNG image.'
}


end
