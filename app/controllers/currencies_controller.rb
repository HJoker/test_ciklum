class CurrenciesController < InheritedResources::Base
  respond_to :html

  def create
    @currency = Currency.new(currency_params)
    flash[:notice] = 'Currency was successfully created.' if @currency.save
    respond_with(@currency)
  end

  def update
    @currency = Currency.find(params[:id])
    flash[:notice] = 'Currency was successfully updated.' if @currency.update(currency_params)
    respond_with(@currency)
  end

  private

    def currency_params
      params.require(:currency).permit(:name, :code, :country_id)
    end
end
