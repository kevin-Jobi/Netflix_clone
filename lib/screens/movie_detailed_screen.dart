// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/movie_detailed_model.dart';
// import 'package:netflix_clone/models/movie_recommentaion_model.dart';
// import 'package:netflix_clone/services/api_services.dart';

// class MovieDetailsScreen extends StatefulWidget {
//   final int movieId;
//   const MovieDetailsScreen({super.key, required this.movieId});

//   @override
//   State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
// }

// class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
//   ApiServices apiServices = ApiServices();

//   late Future<MovieDetailedModel> movieDetail;
//   late Future<MovieRecommendationModel> movieRecommendations;

//   @override
//   void initState() {
//     super.initState();
//     fetchInitialData();
//   }

//   fetchInitialData() {
//     movieDetail = apiServices.getMovieDetail(widget.movieId);
//     movieRecommendations = apiServices.getMovieRecommendations(widget.movieId);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: FutureBuilder<MovieDetailedModel>(
//           future: movieDetail,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasData) {
//               final movie = snapshot.data!;
//               String genreText = movie.genres!.map((genre) => genre.name).join(', ');

//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.4,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage("$imageUrl${movie.backdropPath}"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: SafeArea(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               IconButton(
//                                 icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           movie.name ?? '',
//                           style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 15),
//                         Row(
//                           children: [
//                             Text(
//                               movie.firstAirDate?.year.toString() ?? '',
//                               style: const TextStyle(color: Colors.grey),
//                             ),
//                             const SizedBox(width: 30),
//                             Text(
//                               genreText,
//                               style: const TextStyle(color: Colors.grey, fontSize: 17),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           movie.overview ?? '',
//                           maxLines: 6,
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(color: Colors.white, fontSize: 17),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   FutureBuilder<MovieRecommendationModel>(
//                     future: movieRecommendations,
//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Center(child: CircularProgressIndicator());
//                       } else if (snapshot.hasData) {
//                         final recommendations = snapshot.data!;

//                         if (recommendations.results.isEmpty) {
//                           return const SizedBox();
//                         }

//                         return Padding( 
//                           padding: const EdgeInsets.all(16.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text("More like this", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                               const SizedBox(height: 20),
//                               GridView.builder(
                                
//                                 shrinkWrap: true,
//                                 physics:
//                                  const NeverScrollableScrollPhysics(),
//                                 gridDelegate:
//                                  const SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 3,
//                                   mainAxisSpacing: 15,
//                                   crossAxisSpacing: 5,
//                                   childAspectRatio: 1 / 2,
//                                 ),
//                                 itemCount: recommendations.results.length,
//                                 itemBuilder: (context, index) {
//                                   return CachedNetworkImage(
//                                     imageUrl: "$imageUrl${recommendations.results[index].posterPath}",
//                                     placeholder: (context, url) => const CircularProgressIndicator(),
//                                     errorWidget: (context, url, error) => const Icon(Icons.error),
//                                   );
//                                 },
//                               ),
//                             ],
//                           ),
//                         );
//                       } else {
//                         return const Center(child: Text("Something went wrong"));
//                       }
//                     },
//                   ),
//                 ],
//               );
//             } else {
//               return const Center(child: Text("Failed to load movie details"));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }





import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/movie_detailed_model.dart';
import 'package:netflix_clone/models/movie_recommentaion_model.dart';
import 'package:netflix_clone/services/api_services.dart';

class MovieDetailsScreen extends StatefulWidget {
  final int movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  ApiServices apiServices = ApiServices();

  late Future<MovieDetailedModel> movieDetail;
  late Future<MovieRecommendationModel> movieRecommendations;

  @override
  void initState() {
    super.initState();
    fetchInitialData();
  }

  fetchInitialData() {
    movieDetail = apiServices.getMovieDetail(widget.movieId);
    movieRecommendations = apiServices.getMovieRecommendations(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder<MovieDetailedModel>(
          future: movieDetail,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              final movie = snapshot.data!;
              String genreText = movie.genres!.map((genre) => genre.name).join(', ');

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:movie.backdropPath != null
    ? NetworkImage("$imageUrl${movie.backdropPath}")
    : const AssetImage("assets/netflix.png") as ImageProvider  //new change
,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.name ?? '',
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              movie.firstAirDate?.year.toString() ?? '',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              genreText,
                              style: const TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          movie.overview ?? '',
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  FutureBuilder<MovieRecommendationModel>(
                    future: movieRecommendations,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasData) {
                        final recommendations = snapshot.data!;

                        if (recommendations.results.isEmpty) {
                          return const SizedBox();
                        }

                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("More like this", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 20),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 5,
                                  childAspectRatio: 1 / 2,
                                ),
                                itemCount: recommendations.results.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                      onTap: (){
                                      Navigator.push(
                                        context,
                                         MaterialPageRoute(
                                          builder: (context)=>
                                          MovieDetailsScreen(
                                            movieId:
                                            recommendations.results[index].id ,
                                            )
                                      )
                                      );
                                    },
                                    child: CachedNetworkImage(
                                      imageUrl: "$imageUrl${recommendations.results[index].posterPath}",
                                      placeholder: (context, url) => const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const Center(child: Text("Something went wrong"));
                      }
                    },
                  ),
                ],
              );
            } else {
              return const Center(child: Text("Failed to load movie details"));
            }
          },
        ),
      ),
    );
  }
}
