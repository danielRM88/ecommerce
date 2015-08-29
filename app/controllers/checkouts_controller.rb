class CheckoutsController < ApplicationController
  def start
    @products = []
    unless session[:basket].blank?
      session[:basket].each do |p|
        product = Product.find(p["id"])
        product.amount = p["amount"].to_i
        @products << product
      end
    end
  end

  def create
    amount = 0
    products = []
    unless session[:basket].blank?
      session[:basket].each do |p|
        product = Product.find(p["id"])
        product.amount = p["amount"].to_i
        products << product
      end
    end
    redirect_to CheckoutHandler.paypal_url(finish_path, products)
  end

  def finish
    session[:basket] = []
    flash[:success] = "Your order was successfully submitted. Thank you for shopping with us."
    redirect_to root_path
  end
end
