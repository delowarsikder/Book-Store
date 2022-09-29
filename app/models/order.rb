class Order < ApplicationRecord
  #add validation email
  validates:email, format:{with:/([a-zA-Z]+[0-9]*(\@)(gmail)(\.)(com|org))\b/, message: "please enter valid email" }
  
  enum pay_type: {
    "Check"          => 0, 
    "Credit card"    => 1, 
    "Purchase order" => 2
    }
  
  has_many :line_items, dependent: :destroy
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
        item.cart_id=nil
        line_items<<item
    end
  end

end