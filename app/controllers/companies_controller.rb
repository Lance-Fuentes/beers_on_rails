class CompaniesController < ApplicationController
  def index
    #instance variable -- will be available in index view
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end
end
