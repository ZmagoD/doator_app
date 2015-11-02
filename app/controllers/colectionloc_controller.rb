class ColectionlocController < ApplicationController
  before_action :authenticate_organisation!
  before_action :set_organisation
  
  
  def new
    @colectionloc = current_organisation.colectionlocs.new
  end
  
  def create
  
  end
  
  private
  
  def set_organisation
    @organisation = Organisation.find(params[:organisation_id])
  end
end
