# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Set omniauth logging to Rails logger
OmniAuth.config.logger = Rails.logger
