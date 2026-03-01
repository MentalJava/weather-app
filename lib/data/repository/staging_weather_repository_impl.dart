import 'package:dio/dio.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/data/model/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/di/service_locator.dart';

class StagingWeatherRepositoryImpl implements WeatherRepository {
  final Dio _dio = Dio();

  @override
  Future<Weather> getWeather(String city) async {
    final config = getIt<AppConfig>();

    try {
      final response = await _dio.get(config.apiBaseUrl);

      if (response.statusCode == 200) {
        return Weather.fromJson(response.data);
      } else {
        throw Exception('Failed to load weather: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load weather: $e');
    }
  }
}
