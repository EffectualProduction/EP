class UsersController < ApplicationController
<<<<<<< HEAD

   layout 'registro'

=======
>>>>>>> 235bd7d453691412561f0aeb4c18a482af6e15ce
  	def new
  		@user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to root_url, :notice => "Registro Satisfactorio!"
	  else
	    render :new
	  end
	end
end
