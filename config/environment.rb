# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Chitchat::Application.initialize!

config.action_mailer.delivery_method = :smtp
