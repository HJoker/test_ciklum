class FillDatabase
  def call
    Import::CountriesService.new.call
    Import::CurrenciesService.new.call
  end
end
