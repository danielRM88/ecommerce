class CheckoutHandler
  def self.paypal_url(return_path, line_items)
    values = {
        business: "rosato.daniel-facilitator@gmail.com",
        cmd: "_cart",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}"
    }

    line_items.each_with_index do |item, index|
      values.merge!({
        "amount_#{index + 1}" => item.price,
        "item_name_#{index + 1}" => item.name,
        "quantity_#{index + 1}" => item.amount
      })
    end

    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end