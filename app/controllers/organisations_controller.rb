class OrganisationsController < ApplicationController
  before_action :authenticate_user!, :only => [  :edit, :delete ]
  before_action :configure_permitted_parameters, if: :devise_controller?
  def index 
    @organisations = Organisation.all
  end
  
  def show
    @organisation = Organisation.find(params[:id])
  end
  
  def new
    @organisation = Organisation.new
  end
  
  def create
    
  end
  
  def delete
  end
  
  private

  def organisation_params
    params.require( :organisation ).permit( :name, :address, :zip, :city, :description, :phone, :website )
  end
  
   protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email) }
  end
end
