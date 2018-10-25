class ProductsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @products = pagy(Product.all, items: 25)
  end

  def show
    @product = Product.where("nsn=? AND part_number=?", params[:nsn],
                             params[:part_number]).first
  end
end
