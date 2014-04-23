# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Psync::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   address: 'smtp.gmail.com',
   port: 587,
   domain: 'psync.4ert.biz',
   authentication: 'plain',
   user_name: 'keenfin@gmail.com',
   password: 'keenf1ndro1d',
   enable_starttls_auto: true
}