class ProduccionesController < ApplicationController
  # GET /producciones
  # GET /producciones.json
  def index
    @producciones = Produccion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producciones }
    end
  end

  # GET /producciones/1
  # GET /producciones/1.json
  def show
    @produccion = Produccion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produccion }
    end
  end

  # GET /producciones/new
  # GET /producciones/new.json
  def new
    @produccion = Produccion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produccion }
    end
  end

  # GET /producciones/1/edit
  def edit
    @produccion = Produccion.find(params[:id])
  end

  # POST /producciones
  # POST /producciones.json
  def create
    @produccion = Produccion.new(params[:produccion])

    respond_to do |format|
      if @produccion.save
        format.html { redirect_to @produccion, notice: 'Produccion was successfully created.' }
        format.json { render json: @produccion, status: :created, location: @produccion }
      else
        format.html { render action: "new" }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producciones/1
  # PUT /producciones/1.json
  def update
    @produccion = Produccion.find(params[:id])

    respond_to do |format|
      if @produccion.update_attributes(params[:produccion])
        format.html { redirect_to @produccion, notice: 'Produccion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producciones/1
  # DELETE /producciones/1.json
  def destroy
    @produccion = Produccion.find(params[:id])
    @produccion.destroy

    respond_to do |format|
      format.html { redirect_to producciones_url }
      format.json { head :no_content }
    end
  end
end
