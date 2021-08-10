class ApplicationMailer < ActionMailer::Base
  default from: 'style4yoy@gmail.com'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end
end
