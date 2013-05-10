class DatoscontactosController < ApplicationController

  def index
    @datoscontactos = Datoscontacto.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datoscontactos } 
    end
  end

  def show
      @datoscontacto = Datoscontacto.find(params[:id])
  end

  def new
      @datoscontacto = Datoscontacto.new
  end

  def edit
      @datoscontacto = Datoscontacto.find(params[:id])
  end

  def create
      @datoscontacto = Datoscontacto.new(params[:datoscontacto])
      render :action => :new unless @datoscontacto.save
  end

  def update
      @datoscontacto = Datoscontacto.find(params[:id])
      render :action => :edit unless @datoscontacto.update_attributes(params[:datoscontacto])
  end

  def destroy
      @datoscontacto = Datoscontacto.find(params[:id])
      @datoscontacto.destroy
  end
  
end
