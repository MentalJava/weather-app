import 'package:flutter/material.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/di/service_locator.dart';
import 'package:weather_app/my_app.dart';

void main({AppConfig? config}) {
  final appConfig =
      config ??
      AppConfig(
        flavor: AppFlavor.prod,
        apiBaseUrl: 'https://api.weather.com',
        appTitle: 'Weather App',
      );

  setupServiceLocator(appConfig);

  runApp(const MyApp());
}
