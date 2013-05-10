class SessionsController < ApplicationController
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
	  redirect_to root_url, :notice => "Sesion Finalizada!"
	end
end
