class DistrictsController < ApplicationController
  # GET /districts
  # GET /districts.json
  def index
    @districts = District.all


       respond_to do |wants| 
    wants.html 
    wants.csv do 
       csv_string = CSV.generate do |csv| 
 
    # data rows 
    @districts.each do |d| 
      csv << [d.director_name, d.district_name, d.address_line1, d.address_line2, d.city, d.state, d.zip, d.email, d.phone, d.website, d.service_hours, d.population, d.district_class, d.latitude, d.longitude] 
    end 
  end 
 
  # send it to the browsah
  send_data csv_string, 
            :type => 'text/csv; charset=iso-8859-1; header=present', 
            :disposition => "attachment; filename=districts.csv" 
    end
  end
end




  # GET /districts/1
  # GET /districts/1.json
  def show
    @district = District.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @district }
    end
  end

  # GET /districts/new
  # GET /districts/new.json
  def new
    @district = District.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @district }
    end
  end

  # GET /districts/1/edit
  def edit
    @district = District.find(params[:id])
  end

  # POST /districts
  # POST /districts.json
  def create
    @district = District.new(params[:district])

    respond_to do |format|
      if @district.save
        format.html { redirect_to @district, :notice => 'District was successfully created.' }
        format.json { render :json => @district, :status => :created, :location => @district }
      else
        format.html { render :action => "new" }
        format.json { render :json => @district.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /districts/1
  # PUT /districts/1.json
  def update
    @district = District.find(params[:id])

    respond_to do |format|
      if @district.update_attributes(params[:district])
        format.html { redirect_to :back, :notice => 'District was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @district.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /districts/1
  # DELETE /districts/1.json
  def destroy
    @district = District.find(params[:id])
    @district.destroy

    respond_to do |format|
      format.html { redirect_to districts_url }
      format.json { head :no_content }
    end
  end
end
