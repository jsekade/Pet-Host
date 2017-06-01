class SiteController < ApplicationController
	def home
		@q = User.ransack(params[:q])
    	@search = @q.result(distinct: true)	
		
	end

	def search
		@q = User.ransack(params[:q])
    	@users = @q.result(distinct: true)
    	respond_to do |format|
    		format.html{render 'search_index'}
    		format.json{render json: @users}
    	end
	end
	

		
	
end
