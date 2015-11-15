## experimental stuff to remember as I go through the tutorial and delete/add stuff

#git push -u origin master #set up to have github sticky
#git push origin master
#git push
#git log --oneline

#http://www.google.com/accounts/DisplayUnlockCaptcha
#https://support.google.com/accounts/answer/6010255

#From layouts/application.html.erb

#I played with the buttons, adding a couple
#Played with the footer just to see what would happen

    <main role="main">
       <%= render 'layouts/messages' %>
       <%= yield %>
       <button class="large warning button">Warning Order Now</button>
       <button class="large alert button">alert Order Now</button>
       <button class="large notice button">notice Order Now</button>
       <button class="small warning button">small Warning</button>
    </main>
    <footer class="row"> 
      <section class="small-12 medium-4 columns">
        Copyright 2014
      </section>
      <section class="small-12 medium-8 columns">
        All rights reserved.
      </section>
    </footer>

#From controllers/visitors_controller.rb

#I tried the "warning" flash.now to see what would happen.  Before I switched 
#to zurb, I was able to change the stylesheet to add a warning color.  
#now with Zurb, I don't know where that is.

	def new
		@owner = Owner.new
		flash.now[:notice] = 'Welcome!'
		flash.now[:alert] = 'My Birthday is soon.'
		#flash.now[:arbitrary] = 'How about some presents?'
		flash.now[:warning] = 'Do not wear black when walking on the road at night!'
		# rails doesn use warning, stick with notice and alert
		render 'visitors/new'  #this render is normally 'hidden' (convention over coding), i put this in to remind me
	end

#
# first try at pages/contact.htm.erb... pages, the place to put html/erb files that the 
# high_voltage gem takes care  of routing/controller
<% content_for :title do %>Contact<% end %>
<h3>Contact</h3>
<div class="form">
  <%= simple_form_for :contact, url: contact_path do |form| %>
    <%= form.input :name, autofocus: true %>
    <%= form.input :email %>
    <%= form.input :content, as: :text %>
    <%= form.button :submit, 'Submit', class: 'submit' %>
  <% end %>
</div>

#obsolete app/controller/contacts_controller.rb
class ContactsController < ApplicationController

  def process_form
    #Rails.logger.debug "DEBUG: parms are #{params}"
    flash[:notice] = "Received request from #{params[:contact][:name]}"
    redirect_to root_path
  end
end

#obsolete config/routes.rb entry
Rails.application.routes.draw do
  # af 10/23/2015 added for learn-rails
    post 'contact', to: 'contacts#process_form'
    root to: 'visitors#new'
  #end of add

#obsolete navigation links
<%# add navigation links to this file %>
<li><%= link_to 'About', page_path('about') %></li>
<li><%= link_to 'Contact', page_path('contact') %></li>

#config issues
export GMAIL_USERNAME="ad6ve1@gmail.com"
export GMAIL_PASSWORD="AD6Ve3#!"
export MAILCHIMP_API_KEY="5caf448b4bae5064697dbd3359471be4-us12"
export MAILCHIMP_LIST_ID="l"
export OWNER_EMAIL="al@afedor.com"
export SALT="1*e#49A5f"


#
DEPRECATION WARNING: `#deliver` is deprecated and will be removed in Rails 5. Use 
`#deliver_now` to deliver immediately or `#deliver_later` to deliver through 
Active Job. (called from create at /media/al/XFERVOL/workspace/learn-rails/app/controllers/contacts_controller.
       rb:13)
 