import 'package:movie_app/movie/domain/request/movie_deatiul_request.dart';
import 'package:movie_app/movie/domain/request/movie_query_request.dart';
import 'package:movie_app/movie/domain/response/movie_response.dart';
import 'package:movie_app/movie/domain/response/movies_response.dart';

import '../../../../domain/request/filter_request.dart';
import '../../../../domain/request/movies_request.dart';

abstract class MoviesRepository {
  Future<List<MoviesResponse>> getMovies(final MoviesRequest parameters);

  Future<MoviesResponse?> getMovieDetail(MovieDetailRequest request);

  Future<List<MoviesResponse>> getMoviesByQuery(
      final MoviesQueryRequest parameters);

  Future<List<MoviesResponse>> getMoviesByFilter(final FilterRequest filter);

  Future<MovieResponse?> getMovie(final MovieDetailRequest parameters);
}
