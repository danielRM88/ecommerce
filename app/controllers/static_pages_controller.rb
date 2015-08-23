class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def send_contact_mail
  	msg = params[:msg]
  	UserMailer.contact(msg).deliver unless msg.blank?
  	flash[:notice] = "Thank you for getting in contact with us. We'll review your message shortly!"
  	redirect_to :home
  end
end
