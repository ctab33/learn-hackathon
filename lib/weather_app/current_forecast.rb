class WeatherApp::CurrentForecast
  attr_accessor :summary, :temperature, :uv_index

  def initialize(current_weather)
    @temperature = current_weather["temperature"]
    @summary = current_weather["summary"]
    @uv_index = current_weather["uvIndex"]
  end
end
