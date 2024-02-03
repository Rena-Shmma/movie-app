import '../../shared/constant/app_value.dart';
import '../../shared/utils/utils.dart';
//get movie details

class GenresRequest {
  String? apiKey;
  String? language;
  int? movieId;

  GenresRequest({
    this.apiKey,
    this.language,
    this.movieId,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = language ?? getLangCode();
    return data;
  }
}
