import 'package:flutter/widgets.dart';
import 'package:weather_app/data/model/weather.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

class WeatherViewModel extends ChangeNotifier {
  final WeatherRepository _repository;

  WeatherViewModel({required WeatherRepository repository})
    : _repository = repository;

  Weather? _weather;
  Weather? get weather => _weather;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchWeather(String city) async {
    _isLoading = true;
    notifyListeners();

    try {
      _weather = await _repository.getWeather(city);
    } catch (e) {
      // 에러 처리 로직 (생략)
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
