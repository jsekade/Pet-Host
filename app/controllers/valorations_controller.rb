class ValorationsController < ApplicationController
	def new  
		set_user
        @valoration = Valoration.new
	end

	def create
		@valoration = Valoration.new(
			:opinion => params[:valoration][:opinion],
			:user_id => params[:user_id],
			:host_id => params[:host_id]
		  )
		redirect_to user_path(current_user)
	end

	def index
		set_user
		@valorations = Valoration.all
	end

	def show
    	set_user
 	end

	private

	def set_user
      @user = User.find_by(id: params[:user_id])
    end

end
