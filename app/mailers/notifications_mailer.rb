class NotificationsMailer < ActionMailer::Base
  
  
  default :from => "no-reply@gmail.com"
  default :to => "devendrabobde89@gmail.com"

  def new_contact(contact)
    @contact = contact
    mail(:subject => "[#{@contact.email}] #{@contact.name}")
  end
end
