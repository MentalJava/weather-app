import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/main.dart' as app;

void main() {
  // Android Emulator uses 10.0.2.2 to access host machine's localhost.
  // iOS Simulator and Web use localhost directly.
  final String host =
      (!kIsWeb && Platform.isAndroid) ? '10.0.2.2' : 'localhost';

  final config = AppConfig(
    flavor: AppFlavor.staging,
    apiBaseUrl: 'http://$host:5678/webhook/weather',
    appTitle: '[STAGING] Weather App',
  );
  app.main(config: config);
}
