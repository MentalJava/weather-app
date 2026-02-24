import 'package:flutter/material.dart';
import 'package:weather_app/core/config/app_config.dart';

class WeatherScreen extends StatelessWidget {
  final AppConfig config;

  const WeatherScreen({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(config.appTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Environment: ${config.flavor.name}'),
            Text('API URL: ${config.apiBaseUrl}'),
          ],
        ),
      ),
    );
  }
}
