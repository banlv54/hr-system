class UserMailer < ActionMailer::Base
  default :from => "framgiatest@gmail.com"
 
  def sent_password(user, password, mail)
    @user = user
    @password = password
    mail(to: @user.email, subject: 'Welcome to Hr-System')
  end
end