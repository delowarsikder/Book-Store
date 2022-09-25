class StoreController < ApplicationController
  
  def index
    @items = Product.order(:title)
  end

  def show
  end

end
