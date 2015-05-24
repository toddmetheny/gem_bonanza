class RegistrationsController < Devise::RegistrationsController
  def create
    super
    UserMailer.welcome_email(@user).deliver unless @user.invalid? || @user.email.blank?
  end
end
