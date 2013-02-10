class DistrictclassesController < ApplicationController
  # GET /districtclasses
  # GET /districtclasses.json
    layout "application", only: [:show]
  def index
    @districtclasses = Districtclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @districtclasses }
    end
  end

  # GET /districtclasses/1
  # GET /districtclasses/1.json
  def show
    @districtclass = Districtclass.find(params[:id])
    @districts = @districtclass.districts.all(:order => 'district_name')

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @districtclass }
    end
  end

  # GET /districtclasses/new
  # GET /districtclasses/new.json
  def new
    @districtclass = Districtclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @districtclass }
    end
  end

  # GET /districtclasses/1/edit
  def edit
    @districtclass = Districtclass.find(params[:id])
  end

  # POST /districtclasses
  # POST /districtclasses.json
  def create
    @districtclass = Districtclass.new(params[:districtclass])

    respond_to do |format|
      if @districtclass.save
        format.html { redirect_to @districtclass, notice: 'Districtclass was successfully created.' }
        format.json { render json: @districtclass, status: :created, location: @districtclass }
      else
        format.html { render action: "new" }
        format.json { render json: @districtclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /districtclasses/1
  # PUT /districtclasses/1.json
  def update
    @districtclass = Districtclass.find(params[:id])

    respond_to do |format|
      if @districtclass.update_attributes(params[:districtclass])
        format.html { redirect_to @districtclass, notice: 'Districtclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @districtclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /districtclasses/1
  # DELETE /districtclasses/1.json
  def destroy
    @districtclass = Districtclass.find(params[:id])
    @districtclass.destroy

    respond_to do |format|
      format.html { redirect_to districtclasses_url }
      format.json { head :no_content }
    end
  end
end
