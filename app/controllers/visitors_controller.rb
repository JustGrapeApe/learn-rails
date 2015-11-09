class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		render 'vistors/new'  #this render is normally 'hidden', i put this in to remind me
	end
end
