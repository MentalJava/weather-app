import 'package:weather_app/data/model/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Weather> getWeather(String city) async {
    // 실제 API 연동 로직 (예: Dio, Http 등 사용)
    // Production 환경에서는 실제 API를 호출해야 합니다.
    await Future.delayed(const Duration(seconds: 1));

    return Weather(
      city: city,
      temperature: 15.5,
      description: '맑음 (From Prod API)',
      envName: 'prod',
    );
  }
}
