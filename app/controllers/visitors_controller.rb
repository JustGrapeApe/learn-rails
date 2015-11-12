class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		flash.now[:notice] = 'Welcome!'
		flash.now[:alert] = 'My Birthday is soon.'
		#flash.now[:arbitrary] = 'How about some presents?'
		flash.now[:warning] = 'Do not wear black when walking on the road at night!'
		# rails doesn use warning, stick with notice and alert
		render 'visitors/new'  #this render is normally 'hidden', i put this in to remind me
	end
end
