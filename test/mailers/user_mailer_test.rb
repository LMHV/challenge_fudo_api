class UserMailerPreview < ActionMailer::Preview
  def welcome_email
    # Here we use the first account in the database to preview the email
    account = Account.first
    UserMailer.welcome_email(account)
  end
end