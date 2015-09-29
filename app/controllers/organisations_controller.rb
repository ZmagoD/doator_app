class OrganisationsController < ApplicationController
  
  def index 
    @organisations = Organisation.all
  end
  
  def show
    @organisation = Organisation.find(params[:id])
  end
  
  private

  def organisation_params
    params.require( :organisation ).permit( :name, :address, :zip, :city, :description, :phone, :website )
  end
end
