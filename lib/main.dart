import 'package:flutter/material.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/my_app.dart';

void main({AppConfig? config}) {
  // If config is not provided (when running main.dart directly),
  // use production configuration by default.
  final appConfig =
      config ??
      AppConfig(
        flavor: AppFlavor.prod,
        apiBaseUrl: 'https://api.weather.com',
        appTitle: 'Weather App',
      );

  runApp(MyApp(config: appConfig));
}
