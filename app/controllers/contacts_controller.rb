class ContactsController < ApplicationController
   def new
   	@contact = Contact.new
   end

   def create
   	@contact = Contact.new(secure_params)
   	if @contact.valid?

                  #relax Google security to get this app to work
                  #http://www.google.com/accounts/DisplayUnlockCaptcha
                  #https://support.google.com/accounts/answer/6010255
                  # a security setting in Google My Account 

                   UserMailer.contact_email(@contact).deliver_now
   		flash[:notice] = "Message xxx sent from #{@contact.name}."
   		redirect_to root_path
   	else
   		render :new
   	end
   end

   private
   def secure_params
   	params.require(:contact).permit(:name, :email, :content)
   end

 end

