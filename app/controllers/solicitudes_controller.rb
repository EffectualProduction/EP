class SolicitudesController < ApplicationController

  def index
   @solicitudes = Solicitud.all
   respond_to do |format| 
   format.html 
   format.json { render :json => @solicitud } 
   end
  end

  def show
    @solicitud = Solicitud.find(params[:id])
  end

  def new
      @solicitud = Solicitud.new
  end

  def edit
      @solicitud = Solicitud.find(params[:id])
  end

  def create
      @solicitud = Solicitud.new(params[:solicitud])
      render :action => :new unless @solicitud.save
  end

  def update
      @solicitud = Solicitud.find(params[:id])
      render :action => :edit unless @solicitud.update_attributes(params[:solicitud])
  end

  def destroy
      @solicitud = Solicitud.find(params[:id])
      @solicitud.destroy
  end

  def find_solicitud
      @solicitud = Solicitud.find(params[:id]) if params[:id]
  end
end