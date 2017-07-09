class WeatherApp::DailyForecast
  attr_accessor :summary, :icon

  def initialize(daily_weather)
    @summary = daily_weather["summary"]
    @icon = daily_weather["icon"]
  end

end
