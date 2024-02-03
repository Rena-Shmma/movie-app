import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/movie/presentation/ui/settings/settings_state.dart';

import '../../../data/data_sources/local/preference.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final Preferences _pref;

  SettingsCubit(
    this._pref,
  ) : super(SettingsLoadingState()) {
    init();
  }

  void init() {
    emit(SettingsLoadedState());
  }
}
