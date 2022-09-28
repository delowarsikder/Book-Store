class Product < ApplicationRecord
  has_many :line_items ,dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item
  has_many :orders, through: :line_items
  
  validates :title,:description,:price, presence:true
  validates :title ,uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {with: /([A-Za-z]+[0-9]*(\.)(jpg|png|gif))\b/,message: 'must be a URL for GIF, JPG or PNG image.'}
  private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end

end
