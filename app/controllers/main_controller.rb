class MainController < ApplicationController
	def index
	end
	def about
	end
	def profile
    @user = User.find(params[:username])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
	end
end
