class SessionsController < ApplicationController
<<<<<<< HEAD

	layout 'login'

=======
>>>>>>> 235bd7d453691412561f0aeb4c18a482af6e15ce
    def create
	  user = login(params[:email], params[:password])
	  if user
	    redirect_back_or_to root_url, :notice => "Inicio Satisfactorio"
	  else
	    flash.now.alert = "Email o contraseña incorrectos"
	    render :new
	  end
	end

	def destroy
	  logout
<<<<<<< HEAD
	  redirect_to login_path, :notice => "Sesion Finalizada!"
=======
	  redirect_to root_url, :notice => "Sesion Finalizada!"
>>>>>>> 235bd7d453691412561f0aeb4c18a482af6e15ce
	end
end
