class UserMailer < ApplicationMailer
    default from: 'postmaster@fudo.challenge.com' # Set a default from email
  
    def welcome_email(account)


      mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

      @account = account
      @url  = 'http://localhost:5173'
      mail(to: @account.email, subject: '¡Bienvenido a DELI!')
    end
  end
  