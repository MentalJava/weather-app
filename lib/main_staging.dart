import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/main.dart' as app;

void main() {
  final config = AppConfig(
    flavor: AppFlavor.staging,
    apiBaseUrl: 'https://api.staging.weather.com',
    appTitle: '[STAGING] Weather App',
  );
  app.main(config: config);
}
