class CheckoutsController < ApplicationController
  def start
    @products = []
    session[:basket].each do |id|
      @products << Product.find(id)
    end
  end
end
