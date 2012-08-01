class TimechunksController < ApplicationController
  # GET /timechunks
  # GET /timechunks.json
  def index
    @timechunks = Timechunk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timechunks }
    end
  end

  # GET /timechunks/1
  # GET /timechunks/1.json
  def show
    @timechunk = Timechunk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timechunk }
    end
  end

  # GET /timechunks/new
  # GET /timechunks/new.json
  def new
    @timechunk = Timechunk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timechunk }
    end
  end

  # GET /timechunks/1/edit
  def edit
    @timechunk = Timechunk.find(params[:id])
  end

  # POST /timechunks
  # POST /timechunks.json
  def create
    @timechunk = Timechunk.new(params[:timechunk])

    respond_to do |format|
      if @timechunk.save
        format.html { redirect_to @timechunk, notice: 'Timechunk was successfully created.' }
        format.json { render json: @timechunk, status: :created, location: @timechunk }
      else
        format.html { render action: "new" }
        format.json { render json: @timechunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timechunks/1
  # PUT /timechunks/1.json
  def update
    @timechunk = Timechunk.find(params[:id])

    respond_to do |format|
      if @timechunk.update_attributes(params[:timechunk])
        format.html { redirect_to @timechunk, notice: 'Timechunk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timechunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timechunks/1
  # DELETE /timechunks/1.json
  def destroy
    @timechunk = Timechunk.find(params[:id])
    @timechunk.destroy

    respond_to do |format|
      format.html { redirect_to timechunks_url }
      format.json { head :no_content }
    end
  end
end
