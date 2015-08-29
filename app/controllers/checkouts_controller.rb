class CheckoutsController < ApplicationController
  def start
    @products = []
    unless session[:basket].blank?
      session[:basket].each do |id|
        @products << Product.find(id)
      end
    end
  end

  def create
    amount = 0
    unless session[:basket].blank?
      session[:basket].each do |id|
        product = Product.find(id)
        amount += product.price
      end
    end
    redirect_to CheckoutHandler.paypal_url(finish_path, amount)
  end

  def finish
    session[:basket] = []
    flash[:success] = "Your payment was completed successfully. Thank you for shopping with us."
    redirect_to root_path
  end
end
