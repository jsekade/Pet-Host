class ValorationsController < ApplicationController
	def new  
		set_user
        @valoration = Valoration.new
	end

	def create
		@valoration = Valoration.new(
			:opinion => params[:valoration][:opinion],
			:user_id => current_user.id,
			:host_id => params[:valoration][:host_id]
		  )
		if @valoration.save
		    redirect_to user_path(current_user)
		else
            render 'new'
        end
	end

	def index
		set_user
		@valorations = @user.valorations
	end

	def show
    	set_user
 	end

	private

	def set_user
      @user = User.find_by(id: params[:user_id])
    end

end
