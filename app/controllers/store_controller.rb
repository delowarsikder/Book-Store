class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart
 
  def index
    @items = Product.all.order(:title)
  end

end
