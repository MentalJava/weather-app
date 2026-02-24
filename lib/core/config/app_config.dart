enum AppFlavor { dev, staging, prod }

class AppConfig {
  final AppFlavor flavor;
  final String apiBaseUrl;
  final String appTitle;

  AppConfig({
    required this.flavor,
    required this.apiBaseUrl,
    required this.appTitle,
  });
}
