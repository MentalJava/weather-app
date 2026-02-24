import 'package:flutter/material.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/presentation/weather_screen.dart';

class MyApp extends StatelessWidget {
  final AppConfig config;

  const MyApp({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WeatherScreen(config: config),
    );
  }
}
