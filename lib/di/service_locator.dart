import 'package:get_it/get_it.dart';
import 'package:weather_app/core/config/app_config.dart';
import 'package:weather_app/data/repository/mock_weather_repository.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/data/repository/staging_weather_repository_impl.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/presentation/weather_view_model.dart';

final getIt = GetIt.instance;

void setupServiceLocator(AppConfig config) {
  // Config
  getIt.registerSingleton<AppConfig>(config);

  // Repositories
  switch (config.flavor) {
    case AppFlavor.staging:
      getIt.registerLazySingleton<WeatherRepository>(
        () => StagingWeatherRepositoryImpl(),
      );
      break;
    case AppFlavor.prod:
      getIt.registerLazySingleton<WeatherRepository>(
        () => WeatherRepositoryImpl(),
      );
      break;

    case AppFlavor.dev:
      getIt.registerLazySingleton<WeatherRepository>(
        () => MockWeatherRepository(),
      );
      break;
  }

  // ViewModels
  getIt.registerFactory<WeatherViewModel>(
    () => WeatherViewModel(repository: getIt<WeatherRepository>()),
  );
}
