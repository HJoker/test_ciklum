class CurrenciesController < InheritedResources::Base
  respond_to :html

  def create
    create! { currencies_path }
  end

  def update
    update! { currencies_path }
  end

  private

  def currency_params
    params.require(:currency).permit(:name, :code, :country_id)
  end
end
