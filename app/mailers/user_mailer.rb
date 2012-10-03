class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
  
  def registration_confirmation(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/assets/images/rails.png")
    mail :to => user.email, :subject => "Registered"  
  end
end
