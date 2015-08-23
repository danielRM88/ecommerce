ActionMailer::Base.smtp_settings = {
	address: "smtp.mandrillapp.com",
	port: 587,
	enable_starttls_auto: true,
	user_name: "rosato.daniel@gmail.com",
	password: "XIxHrpODtCq7RRhdzWgNjg",
	authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"