class UserMailer < ActionMailer::Base
  default from: "todd.metheny@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @greeting = "Hi"
    @user = user

    mail(to: user.email, subject: "Welcome")
  end
end
