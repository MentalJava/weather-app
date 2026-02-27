import 'package:weather_app/data/model/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<Weather> getWeather(String city) async {
    // 실제 API 연동 로직 (예: Dio, Http 등 사용)
    // 현재는 실구현체임을 보여주기 위해 다른 데이터를 반환합니다.
    await Future.delayed(const Duration(seconds: 1));

    return Weather(
      city: city,
      temperature: 15.5,
      description: '맑음 (From Real API)',
      envName: 'prod',
    );
  }
}
