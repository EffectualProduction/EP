class UsuariosController < ApplicationController
  # GET /usuarios
  # GET /usuarios.json
  def index
  
    @usuarios = Usuario.search(params[:search]).page(params[:page]).per_page(3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usuarios }
    end
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
      @usuario = Usuario.new
  end

  def edit
      @usuario = Usuario.find(params[:id])
  end

  def create
      @usuario = Usuario.new(params[:usuario])
      render :action => :new unless @usuario.save
  end

  def update
      @usuario = Usuario.find(params[:id])
      render :action => :edit unless @usuario.update_attributes(params[:usuario])
  end

  def destroy
      @usuario = Usuario.find(params[:id])
      @usuario.destroy
  end

  def find_usuario
      @usuario = Usuario.find(params[:id]) if params[:id]
  end
end
