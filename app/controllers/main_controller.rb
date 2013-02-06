class MainController < ApplicationController
  def index
  @districts = District.all

  end

  def show
  end

  def list
  end
end
