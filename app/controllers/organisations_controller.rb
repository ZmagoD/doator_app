class OrganisationsController < ApplicationController
  
  def index 
    @organisations = Organisation.all
  end
  
  
  private

  def user_params
    params.require( :organisation ).permit( :name )
  end
end
