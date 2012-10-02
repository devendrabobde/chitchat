class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end
  
  
  
  def contact
   if request.post? and params[:contact]
      if contact = Contact.new(params[:contact])
        contact.name = "#{params[:contact][:name]}"
        contact.email = "#{params[:contact][:email]}"
        contact.message = "#{params[:contact][:message]}"
        
        if contact.save
          NotificationsMailer.new_contact(contact).deliver
          flash[:notice] = "Thank you for contacting us!."
          redirect_to("/")
        else
          render :contact
        end
        
      end
    end
  end
  
   # def dispatch_email
    # user_info = params[:user_info]
    # if NotificationsMailer.send_email(user_info).deliver
      # flash[:notice] = "Sent!"
    # else
      # flash[:notice] = "Could't send you message."
    # end
    # redirect_to root_url
  # end
  
  
  def news
  end
end
