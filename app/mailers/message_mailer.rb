class MessageMailer < ActionMailer::Base
  	def registration_confirmation(message,sendfile,email)  
        @to = email
        @message = message
        @sendfile = sendfile 
        if @sendfile 
        attachments[@sendfile.original_filename] = File.read(@sendfile.tempfile)
        mail(:to => email , :subject => message.subject , :from => "rohit.innobitz@gmail.com")   
        else
        mail(:to => email , :subject => message.subject , :from => "rohit.innobitz@gmail.com")  
        end  
	end

    def event_invitation(event, user_email)
        @event = event
        @email = user_email
        mail(:to => @email , :subject => event.title , :from => "rohit.innobitz@gmail.com")   
    end
end

