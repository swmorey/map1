class MainController < ApplicationController
  def index
  @districts = District.all(:order => :district_name)

  end

  def show
  end

  def list
  end
end
