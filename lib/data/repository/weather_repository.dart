import 'package:weather_app/data/model/weather.dart';

abstract interface class WeatherRepository {
  Future<Weather> getWeather(String city);
}
