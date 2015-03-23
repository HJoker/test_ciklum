class CountriesController < InheritedResources::Base
  respond_to :html

  def create
    create! { countries_path }
  end

  def update
    update! { countries_path }
  end

  private

  def country_params
    params.require(:country).permit(:name, :code)
  end
end
