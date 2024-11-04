// import 'dart:convert';
// import 'dart:developer';

// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/upcoming_models.dart';
// import 'package:http/http.dart' as http;

// const baseUrl = 'https://api.themoviedb.org/3/';
// var key = "?api_key=$apiKey";
// late String endPoint;

// class ApiServices{
//   Future<UpcomingMovieModel> getUpcomingMovies()async{
     
//      try{
//     endPoint="movie/upcoming";
//     final url= "$baseUrl$endPoint$key";
   
//     final response = await http.get(Uri.parse(url));
//    log(response.statusCode.toString());
//     if(response.statusCode == 200){
//        print('how');
//       log('Success');
//       return UpcomingMovieModel.fromJson(jsonDecode(response.body));
//     }
//      }catch(e){
//       log("getUpcomingMovies errro ${e}");
//      }
//     throw Exception("Failed to load upcoming movies");
    
//   }
// }




import 'dart:convert';
import 'dart:developer';

import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/movie_recommentaion_model.dart';
import 'package:netflix_clone/models/search_model.dart';
import 'package:netflix_clone/models/tv_series_model.dart';
import 'package:netflix_clone/models/upcoming_models.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://api.themoviedb.org/3/';
var key = "?api_key=$apiKey";
late String endPoint;

class ApiServices {
  Future<UpcomingMovieModel> getUpcomingMovies() async {
    endPoint = "movie/upcoming";
    final url = "$baseUrl$endPoint$key";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        log('Success');
        return UpcomingMovieModel.fromJson(jsonDecode(response.body));
      } else {
        log('Failed to load upcoming movies: ${response.statusCode}');
        throw Exception("Failed to load upcoming movies");
      }
    } catch (e) {
      log('Error occurred: $e');
      throw Exception("Failed to load upcoming movies");
    }
  }

  Future<UpcomingMovieModel> getNowPlayingMovies() async {
    endPoint = "movie/now_playing";
    final url = "$baseUrl$endPoint$key";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        log('Success');
        return UpcomingMovieModel.fromJson(jsonDecode(response.body));
      } else {
        log('Failed to load upcoming movies: ${response.statusCode}');
        throw Exception("Failed to load upcoming movies");
      }
    } catch (e) {
      log('Error occurred: $e');
      throw Exception("Failed to load now playing movies");
    }
  }

    Future<TvSeriesModel> getTopRatedSeries() async {
    endPoint = "tv/top_rated";
    final url = "$baseUrl$endPoint$key";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        log('Success');
        return TvSeriesModel.fromJson(jsonDecode(response.body));
      } else {
        log('Failed to load upcoming movies: ${response.statusCode}');
        throw Exception("Failed to load upcoming movies");
      }
    } catch (e) {
      log('Error occurred: $e');
      throw Exception("Failed to load top rated tvseries");
    }
  }

      Future<MovieRecommendationModel> getPopularMovies() async {
    endPoint = "tv/popular";
    final url = "$baseUrl$endPoint$key";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        log('Success');
        return MovieRecommendationModel.fromJson(jsonDecode(response.body));
      } else {
        log('Failed to load popular movies: ${response.statusCode}');
        throw Exception("Failed to load popular movies");
      }
    } catch (e) {
      log('Error occurred: $e');
      throw Exception("Failed to load top rated tvseries");
    }
  }

      Future<SearchModel> getSearchedMovie(String searchText) async {
    endPoint = "search/movie?query=$searchText";
    final url = "$baseUrl$endPoint";
    print('search url is $url');
    try {
      final response = await http.get(
        Uri.parse(url),headers: {
        'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3NTAyYjhjMDMxYzc5NzkwZmU1YzBiNGY5NGZkNzcwZCIsInN1YiI6IjYzMmMxYjAyYmE0ODAyMDA4MTcyNjM5NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.N1SoB26LWgsA33c-5X0DT5haVOD4CfWfRhwpDu9eGkc'
      });

      if (response.statusCode == 200) {
        log('Success');
        return SearchModel.fromJson(jsonDecode(response.body));
      } else {
        log('Failed to load upcoming movies: ${response.statusCode}');
        throw Exception("Failed to load upcoming movies");
      }
    } catch (e) {
      log('Error occurred: $e');
      throw Exception("Failed to load searched movie");
    }
  }
}
