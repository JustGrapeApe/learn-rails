class ContactsController < ApplicationController
   def new
   	@contact = Contact.new
   end

   def create
   	@contact = Contact.new(secure_params)
   	if @contact.valid?
   		#TODO  send message
                   flash[:alert]  = "GMAIL USERNAME: #{ENV['GMAIL_USERNAME']}"
                   flash[:warning]  = "GMAIL PASSWORD: #{ENV['GMAIL_PASSWORD']}"

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

