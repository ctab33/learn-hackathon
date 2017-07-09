class WeatherApp::FetchWeather
  attr_accessor :weather

  def initialize
    response = Faraday.get ''
    @weather = JSON.parse(response.body)
  end
end
