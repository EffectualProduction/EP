class DatoscontactosController < ApplicationController
  # GET /datoscontactos
  # GET /datoscontactos.json
  def index
    @datoscontactos = Datoscontacto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datoscontactos }
    end
  end

  # GET /datoscontactos/1
  # GET /datoscontactos/1.json
  def show
    @datoscontacto = Datoscontacto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datoscontacto }
    end
  end

  # GET /datoscontactos/new
  # GET /datoscontactos/new.json
  def new
    @datoscontacto = Datoscontacto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datoscontacto }
    end
  end

  # GET /datoscontactos/1/edit
  def edit
    @datoscontacto = Datoscontacto.find(params[:id])
  end

  # POST /datoscontactos
  # POST /datoscontactos.json
  def create
    @datoscontacto = Datoscontacto.new(params[:datoscontacto])

    respond_to do |format|
      if @datoscontacto.save
        format.html { redirect_to @datoscontacto, notice: 'Datoscontacto was successfully created.' }
        format.json { render json: @datoscontacto, status: :created, location: @datoscontacto }
      else
        format.html { render action: "new" }
        format.json { render json: @datoscontacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datoscontactos/1
  # PUT /datoscontactos/1.json
  def update
    @datoscontacto = Datoscontacto.find(params[:id])

    respond_to do |format|
      if @datoscontacto.update_attributes(params[:datoscontacto])
        format.html { redirect_to @datoscontacto, notice: 'Datoscontacto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datoscontacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datoscontactos/1
  # DELETE /datoscontactos/1.json
  def destroy
    @datoscontacto = Datoscontacto.find(params[:id])
    @datoscontacto.destroy

    respond_to do |format|
      format.html { redirect_to datoscontactos_url }
      format.json { head :no_content }
    end
  end
end
