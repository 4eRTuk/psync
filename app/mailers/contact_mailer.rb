class ContactMailer < ActionMailer::Base
  
  
  def feedback(data, umail, name)
	mymail = "keenfin@gmail.com"
	@data = data
	@umail = umail
	@name = name
	mail(from: umail, to: mymail, subject: 'Profit Sync Feedback', template_path: 'contact_mailer', template_name: 'feedback' )
  end
end
