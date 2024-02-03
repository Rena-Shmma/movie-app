import 'package:movie_app/movie/domain/response/genre_response.dart';

abstract class FilterRepository {
  Future<List<GenreResponse>> getGenres();
}
