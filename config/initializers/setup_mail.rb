 ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
      :user_name            => "rohit.innobitz@gmail.com",  
      :password             => "radheyadav",  
      :authentication       => "plain",  
      :enable_starttls_auto => true  
    }
 ActionMailer::Base.default_url_options[:host] = "localhost:4000"    