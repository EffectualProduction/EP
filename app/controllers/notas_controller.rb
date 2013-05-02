class NotasController < ApplicationController

  def index
    @notas = Nota.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notas }
    end
  end

  def show
      @nota = Nota.find(params[:id])
  end

  def new
      @nota = Nota.new
  end

  def edit
      @nota = Nota.find(params[:id])
  end

  def create
      @nota = Nota.new(params[:nota])
      render :action => :new unless @nota.save
  end

  def update
      @nota = Nota.find(params[:id])
      render :action => :edit unless @nota.update_attributes(params[:nota])
  end

  def destroy
      @nota = Nota.find(params[:id])
      @nota.destroy
  end
  
end
