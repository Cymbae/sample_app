class UserMailer < ActionMailer::Base
  default from: 'xphoenixlee@gmail.com'

  def welcome_email(user)
    @user = user 
    email_with_name = "#{@user.name} <#{@user.email}>"
    mail(to: email_with_name, subject: 'Welcome to Sapphire!')
  end

  def password_reset(user)
    @user = user
    mail(to: user.email, subject: 'Password Reset')
  end
end