class WeatherApp::HourlyForecast
  attr_accessor :summary, :icon, :hours

  def initialize(hourly_weather)
    @summary = hourly_weather["summary"]
    @icon = hourly_weather["icon"]
    @hours = []
    puts hourly_weather["data"].count
    count = 1
    hourly_weather["data"].each do |hour_data|
      if count == 49
        binding.pry
      end
      count += 1
      @hours << WeatherApp::Hour.new(hour_data)
    end
  end

end
