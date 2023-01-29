import 'package:health_walk/data/models/settings/settings.dart';

abstract class SettingsRepository {
  void updateSettings(Settings updateSettings);
}
