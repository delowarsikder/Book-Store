class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
 
  def index
    @items = Product.all.order(:title)
  end

end
