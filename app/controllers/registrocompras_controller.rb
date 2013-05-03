class RegistrocomprasController < ApplicationController

  def index
    @registrocompras = Registrocompra.all 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registrocompras }
    end
  end

  def show
      @registrocompra = Registrocompra.find(params[:id])
  end

  def new
      @registrocompra = Registrocompra.new
  end

  def edit
      @registrocompra = Registrocompra.find(params[:id])
  end

  def create
      @registrocompra = Registrocompra.new(params[:registrocompra])
      render :action => :new unless @registrocompra.save
  end

  def update
      @registrocompra = Registrocompra.find(params[:id])
      render :action => :edit unless @registrocompra.update_attributes(params[:registrocompra])
  end

  def destroy
      @registrocompra = Registrocompra.find(params[:id])
      @registrocompra.destroy
  end
  
end
