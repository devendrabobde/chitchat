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
  
  # def new
     # @message = Message.new
  # end
  
  def contact
   # @message = Message.new
    # @message = Message.new(params[:message])
#     
    # if @message.valid?
      # NotificationsMailer.new_message(@message).deliver
      # redirect_to(root_path, :notice => "Message was successfully sent.")
    # else
      # flash.now.alert = "Please fill all fields."
      # render :new
    # end
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
