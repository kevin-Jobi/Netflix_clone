// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/movie_recommentaion_model.dart';
// import 'package:netflix_clone/models/search_model.dart';
// import 'package:netflix_clone/services/api_services.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   TextEditingController searchController = TextEditingController();
// ApiServices apiServices = ApiServices();
// late Future<MovieRecommendationModel> popularMovies;
// SearchModel? searchModel;

// void search(String query){
//   apiServices.getSearchedMovie(query).then((results)  {
//     setState(() {
//       searchModel = results;
//     });
//   });
// }

// @override
//   void initState() {
   
//     super.initState();
//     popularMovies = apiServices.getPopularMovies();
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             CupertinoSearchTextField(
//               padding: const EdgeInsets.all(10),
//               controller: searchController ,
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: Colors.grey,
//                 ),
//                 suffixIcon: const Icon(
//                   Icons.cancel,
//                 color: Colors.grey,
//                 ),
//                 style: const TextStyle(color: Colors.white),
//                 backgroundColor: Colors.grey.withOpacity(0.3),
//                 onChanged: (value){
//                   if(value.isEmpty){
//                     setState(() {
//                       searchModel = null;
//                     });
//                     }else{
//                     search(searchController.text);
//                   }
//                 },
//             ),
           
//           const SizedBox(height: 10),
//             searchController.text.isEmpty?
//             Expanded(
//               child: FutureBuilder<MovieRecommendationModel>(
//                     future: popularMovies,
//                      builder: (context,snapshot){
//                       if(snapshot.hasError){
//                         return Center(
//               child: Text('Error${snapshot.error}'),
//                         );
//                       }
//                       if(snapshot.connectionState == ConnectionState.waiting){
//                         return const Center(child: CircularProgressIndicator(),
//                         );
//                       }
//                   var data =  snapshot.data?.results?? [];
                  
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
                  
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal:8.0),
//                         child: Text(
//                           'Top Searches',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16
//                             ),
//                           ),
//                       ),
//                         const SizedBox(height: 10),
//                         Expanded(
//                           child: ListView.builder(
//                                         itemCount:data.length ,
//                                         // scrollDirection: Axis.vertical,
//                                         // shrinkWrap: true,
//                                         padding: const EdgeInsets.symmetric(horizontal: 8), 
//                                         // physics: const NeverScrollableScrollPhysics(),
//                                         itemBuilder: (context, index) {
//                                         return Container(
//                                           height: 150,
//                                           padding: const EdgeInsets.all(5),
//                                           decoration:BoxDecoration(
//                                             borderRadius: BorderRadius.circular(20)
//                                              ) ,
//                                              child: Row(
//                                                children: [
//                                                  ClipRRect(
//                                                     borderRadius: BorderRadius.circular(8),
//                                                    child: Image.network(
//                                                         '$imageUrl${data[index].posterPath}',
//                                                         height: 140,
//                                                         width: 100,
//                                                         fit: BoxFit.cover,
//                                                         ),
//                                                  ),
//                           const SizedBox(
//                             width: 20
//                             ),
//                           Expanded(
//                             child: Text(data[index].name,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(fontSize: 16),
//                             ),
//                           )
//                                   ],
//                                   ),
//                                 );
//                           }
//                           ),
//                         )
//                     ],
//                   );
//                   }
//                   ),
//             )
//     :searchModel !=null
//             ?
//             Expanded(
//               child: GridView.builder(
//                 padding: const EdgeInsets.all(8),
//                 // shrinkWrap: true,  
//                 // physics: const NeverScrollableScrollPhysics(),
//                 itemCount: searchModel?.results.length,
//                 gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 15,
//                 crossAxisSpacing: 5,
//                 // childAspectRatio: 1.2/2
//                 childAspectRatio: 1 / 1.8
//                 ),
//                  itemBuilder: (context,index){
//                   return Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child:searchModel!.results[index].backdropPath==null
//                         ?Image.asset(
//                           "assets/logo.png",
//                           height: 140,
//                           ) : CachedNetworkImage(
//                           imageUrl:
//                            "$imageUrl${searchModel!.results[index].backdropPath}",
//                            height: 140,
//                            width: double.infinity,
//                            fit: BoxFit.cover,
//                            ),
//                       ),
//                       const SizedBox(height: 5,),
//                          SizedBox(
//                           width: 90,
//                            child: Text(
//                             searchModel!.results[index].originalTitle,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                            style: const TextStyle(fontSize: 14),
//                            textAlign: TextAlign.center,
//                            ),
//                          )
//                     ],
//                   );
//               }),
//             )
//             :const SizedBox.shrink()
//           ],  
//         )
//       ),
//     );
//   }
// }




import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/movie_recommentaion_model.dart';
import 'package:netflix_clone/models/search_model.dart';
import 'package:netflix_clone/screens/movie_detailed_screen.dart';
import 'package:netflix_clone/services/api_services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  ApiServices apiServices = ApiServices();
  late Future<MovieRecommendationModel> popularMovies;
  SearchModel? searchModel;

  void search(String query) {
    apiServices.getSearchedMovie(query).then((results) {
      setState(() {
        searchModel = results;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    popularMovies = apiServices.getPopularMovies();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              controller: searchController,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.withOpacity(0.3),
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() {
                    searchModel = null; // Clear search results if input is empty
                  });
                } else {
                  search(searchController.text);
                }
              },
            ),
            const SizedBox(height: 10),
            // Show top searches if the search query is empty
            searchController.text.isEmpty
                ? Expanded(
                    child: FutureBuilder<MovieRecommendationModel>(
                      future: popularMovies,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text('Error: ${snapshot.error}'),
                          );
                        }
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        var data = snapshot.data?.results ?? [];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Top Searches',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: ListView.builder(
                                itemCount: data.length,
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                         MaterialPageRoute(
                                          builder: (context)=>MovieDetailsScreen(
                                            movieId:data[index].id ,
                                            )
                                      )
                                      );
                                    },
                                    child: Container(
                                      height: 150,
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.network(
                                              '$imageUrl${data[index].posterPath}',
                                              height: 140,
                                              width: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          Expanded(
                                            child: Text(
                                              data[index].name,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                // Show search results in a grid view if there is a search query
                : searchModel != null
                    ? Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: searchModel?.results.length,
                          gridDelegate:
                           const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 5,
                            childAspectRatio: 1 / 2,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                Navigator.push(context,
                                 MaterialPageRoute(
                                  builder: (context)=>
                                  MovieDetailsScreen(movieId: searchModel!.results[index].id),
                                  ),
                                  );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: searchModel!.results[index].backdropPath == null
                                        ? Image.asset(
                                            "assets/  o.png",
                                            height: 140,
                                            fit: BoxFit.cover,
                                          )
                                        : CachedNetworkImage(
                                            imageUrl:
                                                "$imageUrl${searchModel!.results[index].backdropPath}",
                                            height: 140,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    width: 90,
                                    child: Text(
                                      searchModel!.results[index].originalTitle,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
