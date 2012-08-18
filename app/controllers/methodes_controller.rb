class MethodesController < ApplicationController
  # GET /methodes
  # GET /methodes.json
  def index
    @methodes = Methode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @methodes }
    end
  end

  # GET /methodes/1
  # GET /methodes/1.json
  def show
    @methode = Methode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @methode }
    end
  end

  # GET /methodes/new
  # GET /methodes/new.json
  def new
    @methode = Methode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @methode }
    end
  end

  # GET /methodes/1/edit
  def edit
    @methode = Methode.find(params[:id])
  end

  # POST /methodes
  # POST /methodes.json
  def create
    @methode = Methode.new(params[:methode])

    respond_to do |format|
      if @methode.save
        format.html { redirect_to @methode, notice: 'Methode was successfully created.' }
        format.json { render json: @methode, status: :created, location: @methode }
      else
        format.html { render action: "new" }
        format.json { render json: @methode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /methodes/1
  # PUT /methodes/1.json
  def update
    @methode = Methode.find(params[:id])

    respond_to do |format|
      if @methode.update_attributes(params[:methode])
        format.html { redirect_to @methode, notice: 'Methode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @methode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /methodes/1
  # DELETE /methodes/1.json
  def destroy
    @methode = Methode.find(params[:id])
    @methode.destroy

    respond_to do |format|
      format.html { redirect_to methodes_url }
      format.json { head :no_content }
    end
  end
end
