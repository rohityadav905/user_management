class MessagesController < ApplicationController
	before_action :authenticate_user!
	def new
		@user = User.find(params[:id])
	end

	def inbox
  	@messages = Message.where(:trash => false , :receiver_id => current_user.id).all.order(created_at: :desc)
	end
	
	def outbox
		@messages = Message.where(:trash => false , :sender_id => current_user.id).all.order(created_at: :desc)
	end

	def create
    @message = Message.new(user_params)
    @identify = EmailVerifier.check(params[:message][:email])
    #debugger
    if @message.save
      MessageMailer.registration_confirmation(@message, user_params[:sendfile], params[:message][:email]).deliver  
      redirect_to homes_path
    end  
	end

	def reply_inbox_message
		@user = User.find(params[:id])
	end

	def create_reply_inbox_message
  	@message = Message.new(user_params)
 		if @message.save
    	MessageMailer.registration_confirmation(@message, user_params[:sendfile], params[:message][:email]).deliver  
    	redirect_to inbox_message_path
    end  
  end

	def reply_outbox_message
		@user = User.find(params[:id])
	end

	def create_reply_outbox_message
  	@message = Message.new(user_params)
 		if @message.save
    	MessageMailer.registration_confirmation(@message, user_params[:sendfile], params[:message][:email]).deliver  
    	redirect_to outbox_message_path
    end 
  end

	def destroy_inbox_message
  	@message = Message.find(params[:id])
  	@message.destroy
    edirect_to inbox_message_path
  end

  def destroy_outbox_message
  	@message = Message.find(params[:id])
  	@message.destroy
    redirect_to outbox_message_path
  end

  def destroy_multiple_messages
    Message.destroy(params[:selectmultiple])
    redirect_to homes_path
  end

	private
  	def user_params
    params.require(:message).permit(:receiver_id, :sendfile ,:sender_id , :messages, :subject , :trash)
 	end
end
