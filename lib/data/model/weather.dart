import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    @Default('Unknown City') String city,
    @JsonKey(name: 'temp') required double temperature,
    @JsonKey(name: 'condtion') required String description,
    @JsonKey(name: 'env') required String envName,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
