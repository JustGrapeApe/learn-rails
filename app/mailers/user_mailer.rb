class UserMailer < ApplicationMailer
	default from: "do-not-replay@foobarMail.com"

	def contact_email(contact)
		@contact = contact
		#"mail" analagous to "render"
		mail(to: Rails.application.secrets.owner_email, 
			from: @contact.email, :subject => "Website Contact")
	end
end
