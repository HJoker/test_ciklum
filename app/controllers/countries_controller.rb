class CountriesController < InheritedResources::Base
  respond_to :html

  def create
    @country = Country.new(country_params)
    flash[:notice] = 'Country was successfully created.' if @country.save
    respond_with(@country)
  end

  def update
    @country = Country.find(params[:id])
    flash[:notice] = 'Country was successfully updated.' if @country.update(country_params)
    respond_with(@country)
  end

  private
  
    def country_params
      params.require(:country).permit(:name, :code)
    end
end
