class UserMailer < ApplicationMailer
  default from: 'no-reply@ecommerce.com'
  default to: "rosato.daniel@gmail.com"
 
  def contact(msg)
    # @user = user
    # @url  = 'http://example.com/login'
    @msg = msg
    mail(subject: 'Contact email')
  end
end
