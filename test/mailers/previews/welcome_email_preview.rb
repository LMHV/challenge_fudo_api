class UserMailerPreview < ActionMailer::Preview
    def welcome_email_preview
      account = Account.new(fullName: "Joe Smith", email: "joe@gmail.com", country: "Tokyo", password: "I want to place an account!", age: 10, username: 'Joe')  
      UserMailer.with(account: account).welcome_email
    end
  end