class WeatherApp::CLI

  def start
    puts "Welcome to the DarkSky API Weather API App"
    puts "This will be your weather in NY"
    get_data
    display_current_weather
    display_hourly_weather
    display_daily_weather
    binding.pry
    @weather.hourly_forecast.hours.each do |hour|
      binding.pry
      display_weather_per_hour(hour)
    end
  end

  def get_data
    @response = WeatherApp::FetchWeather.new
    @weather = WeatherApp::Forecast.new(@response.weather)
  end

  def display_current_weather
    puts "Temperature: #{@weather.current_forecast.temperature}"
    puts "UVIndex: #{@weather.current_forecast.uv_index}"
    puts "Summary: #{@weather.current_forecast.summary}"
  end

  def display_hourly_weather
    puts "Hourly Summary: #{@weather.hourly_forecast.summary}"
    puts "Hourly Icon: #{@weather.hourly_forecast.icon}"
  end

  def display_daily_weather
    puts "Daily Summary: #{@weather.daily_forecast.summary}"
    puts "Daily Icon: #{@weather.daily_forecast.icon}"
  end

  def display_weather_per_hour(hour)
    puts "Hourly time is #{hour.time}."
    puts "Hourly summary is #{hour.summary}."
    puts "Hourly temperature is #{hour.temperature}."
  end
end
