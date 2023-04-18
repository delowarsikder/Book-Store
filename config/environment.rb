# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  authentication: "plain",
  user_name: "your own email",
  password: "own email password",
  enable_starttls_auto: true
  } 