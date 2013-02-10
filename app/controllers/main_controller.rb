class MainController < ApplicationController
   layout "blank", only: [:about]
 
  def index
  @districts = District.all(:order => :district_name)

  end

  def about
  end

  def list
  end





end
