class RegistrocomprasController < ApplicationController
  # GET /registrocompras
  # GET /registrocompras.json
  def index
    @registrocompras = Registrocompra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registrocompras }
    end
  end

  # GET /registrocompras/1
  # GET /registrocompras/1.json
  def show
    @registrocompra = Registrocompra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registrocompra }
    end
  end

  # GET /registrocompras/new
  # GET /registrocompras/new.json
  def new
    @registrocompra = Registrocompra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registrocompra }
    end
  end

  # GET /registrocompras/1/edit
  def edit
    @registrocompra = Registrocompra.find(params[:id])
  end

  # POST /registrocompras
  # POST /registrocompras.json
  def create
    @registrocompra = Registrocompra.new(params[:registrocompra])

    respond_to do |format|
      if @registrocompra.save
        format.html { redirect_to @registrocompra, notice: 'Registrocompra was successfully created.' }
        format.json { render json: @registrocompra, status: :created, location: @registrocompra }
      else
        format.html { render action: "new" }
        format.json { render json: @registrocompra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registrocompras/1
  # PUT /registrocompras/1.json
  def update
    @registrocompra = Registrocompra.find(params[:id])

    respond_to do |format|
      if @registrocompra.update_attributes(params[:registrocompra])
        format.html { redirect_to @registrocompra, notice: 'Registrocompra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registrocompra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrocompras/1
  # DELETE /registrocompras/1.json
  def destroy
    @registrocompra = Registrocompra.find(params[:id])
    @registrocompra.destroy

    respond_to do |format|
      format.html { redirect_to registrocompras_url }
      format.json { head :no_content }
    end
  end
end
