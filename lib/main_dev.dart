import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/main.dart' as app;

void main() {
  final config = AppConfig(
    flavor: AppFlavor.dev,
    apiBaseUrl: 'https://api.dev.weather.com',
    appTitle: '[DEV] Weather App',
  );
  app.main(config: config);
}
