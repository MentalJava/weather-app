import 'package:flutter/material.dart';
import 'package:weather_app/di/service_locator.dart';
import 'package:weather_app/presentation/weather_screen.dart';
import 'package:weather_app/presentation/weather_view_model.dart';

class WeatherRoot extends StatefulWidget {
  const WeatherRoot({super.key});

  @override
  State<WeatherRoot> createState() => _WeatherRootState();
}

class _WeatherRootState extends State<WeatherRoot> {
  late final WeatherViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<WeatherViewModel>();
    _viewModel.fetchWeather('Seoul');
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, child) {
        return WeatherScreen(
          isLoading: _viewModel.isLoading,
          weather: _viewModel.weather,
          onRefresh: () => _viewModel.fetchWeather('Seoul'),
        );
      },
    );
  }
}
