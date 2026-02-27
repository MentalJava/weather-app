import 'package:flutter/material.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/di/service_locator.dart';
import 'package:weather_app/presentation/weather_root.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final config = getIt<AppConfig>();

    return MaterialApp(
      title: config.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WeatherRoot(),
    );
  }
}
