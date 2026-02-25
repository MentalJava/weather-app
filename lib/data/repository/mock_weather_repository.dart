import 'package:weather_app/data/model/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

class MockWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> getWeather(String city) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return Weather(
      city: city,
      temperature: 25.0,
      description: '흐림',
      envName: 'dev',
    );
  }
}
