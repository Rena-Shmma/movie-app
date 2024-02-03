import 'package:movie_app/movie/shared/constant/app_value.dart';
import 'package:movie_app/movie/shared/utils/utils.dart';

//filter
class FilterRequest {
  int? year, page;
  String? apiKey, language, sortBy, withGenres;
  FilterRequest(
      {this.year,
      this.page,
      this.apiKey,
      this.language,
      this.sortBy,
      this.withGenres});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = language ?? getLangCode();
    data['sort_by'] = sortBy ?? "withGenres";
    data['withGenres'] = withGenres ?? '';
    if (data != null) {
      data['year'] = year;
    }
    data['page'] = page ?? 1;
    return data;
  }
}
