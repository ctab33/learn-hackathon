class WeatherApp::Forecast
  attr_accessor :current_forecast, :hourly_forecast, :daily_forecast, :hour_forecast

  def initialize(weather_hash)
    @current_forecast = WeatherApp::CurrentForecast.new(weather_hash["currently"])
    @hourly_forecast = WeatherApp::HourlyForecast.new(weather_hash["hourly"])
    @daily_forecast = WeatherApp::DailyForecast.new(weather_hash["daily"])
    @hour_forecast = WeatherApp::Hour.new(weather_hash["hour"])
  end
end
