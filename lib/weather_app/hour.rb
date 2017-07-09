class WeatherApp::Hour
  attr_accessor :time, :summary, :temperature

  def initialize(hour_data)
    @time = hour_data["time"]
    @summary = hour_data["summary"]
    @temperature = hour_data["temperature"]
  end
end
