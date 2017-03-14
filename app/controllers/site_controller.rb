class SiteController < ApplicationController
	def home
		@q = User.ransack(params[:q])
    	@search = @q.result(distinct: true)	
		render 'home'
	end

	def search
		@q = User.ransack(params[:q])
    	@users = @q.result(distinct: true)
		render 'search_index'
   
	end
	
end
