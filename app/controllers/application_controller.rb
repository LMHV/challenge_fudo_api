class ApplicationController < ActionController::API
    def self.encode_token(payload)
        JWT.encode(payload, 'ESTEESUNSECRETONUESTRO')
        # JWT.encode(payload, Rails.application.secrets.secret_key_base)
      end
end
