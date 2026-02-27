import 'package:flutter/material.dart';
import 'package:weather_app/data/model/weather.dart';

class WeatherScreen extends StatelessWidget {
  final bool isLoading;
  final Weather? weather;
  final VoidCallback onRefresh;

  const WeatherScreen({
    super.key,
    required this.isLoading,
    required this.weather,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Information'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: onRefresh),
        ],
      ),
      body: Center(
        child:
            isLoading
                ? const CircularProgressIndicator()
                : weather == null
                ? const Text('날씨 정보를 가져올 수 없습니다.')
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      weather!.city,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${weather!.temperature.toStringAsFixed(1)}°C',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(weather!.description),
                    const SizedBox(height: 16),
                    Text(
                      'Environment: ${weather!.envName}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
      ),
    );
  }
}
