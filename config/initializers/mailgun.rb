require 'mailgun-ruby'

Mailgun.configure do |config|
  config.api_key = ENV['MAILGUN_API_KEY'] # Configura tu API key de Mailgun en las variables de entorno
  config.domain  = ENV['MAILGUN_DOMAIN']  # Configura tu dominio de Mailgun en las variables de entorno
end
