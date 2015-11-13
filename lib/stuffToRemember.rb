## experimental stuff to remember as I go through the tutorial and delete/add stuff

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