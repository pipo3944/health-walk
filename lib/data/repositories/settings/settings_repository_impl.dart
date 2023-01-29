import 'package:health_walk/data/models/settings/settings.dart';
import 'package:health_walk/data/repositories/settings/settings_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingsProvider =
    StateNotifierProvider<SettingsRepositoryImpl, Settings>(
        (ref) => SettingsRepositoryImpl(ref));

class SettingsRepositoryImpl extends StateNotifier<Settings>
    implements SettingsRepository {
  SettingsRepositoryImpl(this._ref)
      : super(const Settings(dayStepGoalCount: 8000));

  final Ref _ref;

  @override
  void updateSettings(Settings updateSettings) {
    state = updateSettings;
  }
}
