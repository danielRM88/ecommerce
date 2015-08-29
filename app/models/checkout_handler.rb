class CheckoutHandler
  def self.paypal_url(return_path, amount)
    values = {
        business: "rosato.daniel-facilitator@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        amount: amount,
        quantity: '1'
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end