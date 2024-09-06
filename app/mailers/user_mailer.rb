class UserMailer < ApplicationMailer
    default from: 'brad@fudo.challenge.com' # Set a default from email
  
    def welcome_email(account)
      @account = account
      @url  = 'http://localhost:5173'
      mail(to: @account.email, subject: 'Welcome to My Awesome Site')
    end
  end
  