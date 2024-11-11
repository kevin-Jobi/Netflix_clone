



























// import 'package:flutter/material.dart';
// import 'package:netflix_clone/screens/homescreen.dart';
// import 'package:netflix_clone/screens/more_screen.dart';
// import 'package:netflix_clone/screens/search_screens.dart';

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  DefaultTabController(
//       length: 3,
//        child: Scaffold(
//         bottomNavigationBar:Container(
//           color: Colors.black,
//           height: 70,
//           child: const TabBar(tabs:[
//             Tab(
//               icon: Icon(Icons.home),
//               text: 'Home',
//             ),
//                         Tab(
//               icon: Icon(Icons.search),
//               text: 'Search',
//             ),
//                         Tab(
//               icon: Icon(Icons.photo_library_outlined),
//               text: 'New & Hot',
//             )
//           ] ,
//           indicatorColor: Colors.transparent,
//           labelColor: Colors.white,
//           unselectedLabelColor: Color(0xff999999),
//           ),
//         ) ,
//         body: const TabBarView(children: [
          
//           HomeScreen(),
//           SearchScreen(),
//           MoreScreen(),
//           ],),
//        )
//        );
//   }
// }










// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/tv_series_model.dart';
// import 'package:netflix_clone/models/upcoming_models.dart';
// import 'package:netflix_clone/screens/search_screens.dart';
// import 'package:netflix_clone/services/api_services.dart';
// import 'package:netflix_clone/widgets/custom_carousal.dart';
// import 'package:netflix_clone/widgets/movie_card_widget.dart';
  
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScrennState();
// }

// class _HomeScrennState extends State<HomeScreen> {
//   late Future<UpcomingMovieModel> upcomingFuture;
//   late Future<UpcomingMovieModel> nowPlayingFuture;
//     late Future<TvSeriesModel> topRatedSeries;

// ApiServices apiServices = ApiServices();
//   @override
//   void initState() {
//     super.initState();
//     upcomingFuture=apiServices.getUpcomingMovies();
//     nowPlayingFuture=apiServices.getNowPlayingMovies();
//     topRatedSeries=apiServices.getTopRatedSeries();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//       appBar: AppBar(
//         backgroundColor: kBackgroundColor,
//         title: Image.asset(
//           "assets/logo (1).png",
//         height: 50,
//         width: 120,
        
//         ),
//         actions:  [
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: InkWell(
//               onTap:() {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                         builder: (context)=>const SearchScreen()
//                         )
//                     );
//               } ,
//               child: const Icon(
//                 Icons.search,
//                 size: 30,
//               color:Colors.white,
//               ),
//             ),
//           ),
//           ClipRRect(
//             borderRadius:BorderRadius.circular(6),
//             child: Container(
//               color: Colors.blue,
//               height: 27,
//               width: 27,
//             ),
             
//           ),
//           const SizedBox(
//               width: 20,
//             )
//         ],

//         ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             FutureBuilder(
//               future: topRatedSeries,
//                builder: (context,snapshot){
//                 if(snapshot.hasData){
//                   return CustomCarouselSlider(data: snapshot.data!);
//                 }else{
//                   return const SizedBox.shrink();
//                 }
              
//             }
//             ),
//                       SizedBox(
//               height:220 ,
//               child: MovieCardWidget(
//                 future: nowPlayingFuture,headLineText: "Now Playing ",),
//             ),
//             const SizedBox(
//               height: 20,
//               ),
//             SizedBox(
//               height:220 ,
//               child: MovieCardWidget(
//                 future: upcomingFuture,headLineText: "Upcoming Movies",),
//             ),
       
//           ],
//         ),
//       )
//     );
//   }
// } 




// import 'package:flutter/material.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/tv_series_model.dart';
// import 'package:netflix_clone/models/upcoming_models.dart';
// import 'package:netflix_clone/screens/search_screens.dart';
// import 'package:netflix_clone/services/api_services.dart';
// import 'package:netflix_clone/widgets/custom_carousal.dart';
// import 'package:netflix_clone/widgets/movie_card_widget.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late Future<UpcomingMovieModel> upcomingFuture;
//   late Future<UpcomingMovieModel> nowPlayingFuture;
//   late Future<TvSeriesModel> topRatedSeries;
//   late Future<UpcomingMovieModel> trendingFuture;
//   late Future<UpcomingMovieModel> newOnNetflixFuture;
  
//   int _selectedIndex = 0;

//   ApiServices apiServices = ApiServices();

//   @override
//   void initState() {
//     super.initState();
//     upcomingFuture = apiServices.getUpcomingMovies();
//     nowPlayingFuture = apiServices.getNowPlayingMovies();
//     topRatedSeries = apiServices.getTopRatedSeries();
//     trendingFuture = apiServices.getUpcomingMovies(); // Replace with getTrendingMovies when available
//     newOnNetflixFuture = apiServices.getNowPlayingMovies(); // Replace with getNewOnNetflix when available
//   }

//   void _onItemTapped(int index) { 
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: _selectedIndex == 1
//             ? const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(children: []),
//               )
//             : Image.asset(
//                 'assets/netflix.png',
//                 height: 35,
//               ),
//         actions: [
//           const Icon(
//             Icons.cast,
//             color: Colors.white,
//             size: 25,
//           ),
//           const SizedBox(width: 15),
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SearchScreen()),
//               );
//             },
//             icon: const Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(width: 15),
//         ],
//       ),
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: [
         
//           _buildHomeContent(),
//           _buildNewAndHot(),
//           _buildMyNetflix(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.video_library),
//             label: 'New & Hot',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'My Netflix',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.white,
//         backgroundColor: Colors.black,
//         onTap: _onItemTapped,
//       ),
//     );
//   }

//   Widget _buildHomeContent() {
//     return SingleChildScrollView( 
//       physics: const BouncingScrollPhysics(),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Featured Movie Banner
//           Center(
//             child: Container(
//               height: 360,
//               decoration: const BoxDecoration( 
//                 image: DecorationImage(
//                   image: AssetImage('assets/johnwick.jpg'),
//                   // fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           // Action Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: const [
//                   Icon(
//                     Icons.add,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   Text(
//                     'My List',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12,
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(width: 34),
//               Container(
//                 height: 40,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Colors.white,
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.play_arrow, size: 35),
//                     SizedBox(width: 5),
//                     Text(
//                       'Play',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 30),
//               Column(
//                 children: const [
//                   Icon(
//                     Icons.info_outline_rounded,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                   Text(
//                     'Info',
//                     style: TextStyle(color: Colors.white),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
          
//           // Movie Sections
//           _buildMovieSection('Trending Now', trendingFuture),
//           _buildMovieSection('Now Playing', nowPlayingFuture),
//           _buildMovieSection('Upcoming Movies', upcomingFuture),
//           _buildMovieSection('New on Netflix', newOnNetflixFuture),
//         ],
//       ),
//     );
//   }

//   Widget _buildMovieSection(String title, Future<UpcomingMovieModel> future) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w400,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 220,
//           child: MovieCardWidget(
//             future: future,
//             headLineText: title,
//           ),
//         ),
//         const SizedBox(height: 15),
//       ],
//     );
//   }

//   Widget _buildNewAndHot() {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           elevation: 0,
//           title: const Text(
//             'New & Hot',
//             style: TextStyle(color: Colors.white),
//           ),
//           bottom: TabBar(
//             dividerColor: Colors.black,
//             indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//             ),
//             labelColor: Colors.black,
//             labelStyle: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 14,
//             ),
//             unselectedLabelColor: Colors.white,
//             tabs: const [
//               Tab(text: "🍿 Coming soon"),
//               Tab(text: "🔥 Everyone's Watching"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             _buildComingSoonTab(),
//             _buildEveryonesWatchingTab(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildComingSoonTab() {
//     return FutureBuilder<UpcomingMovieModel>(
//       future: upcomingFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error: ${snapshot.error}',
//                 style: const TextStyle(color: Colors.white)),
//           );
//         } else {
//           return ListView.builder(
//             itemCount: snapshot.data?.results.length ?? 0,
//             itemBuilder: (context, index) {
//               final movie = snapshot.data!.results[index];
//               return Card(
//                 color: Colors.black,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               'https://image.tmdb.org/t/p/w500${movie.backdropPath}'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         movie.title,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         movie.overview,
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         }
//       },
//     );
//   }

//   Widget _buildEveryonesWatchingTab() {
//     return FutureBuilder<TvSeriesModel>(
//       future: topRatedSeries,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error: ${snapshot.error}',
//                 style: const TextStyle(color: Colors.white)),
//           );
//         } else {
//           return ListView.builder(
//             itemCount: snapshot.data?.results.length ?? 0,
//             itemBuilder: (context, index) {
//               final series = snapshot.data!.results[index];
//               return Card(
//                 color: Colors.black,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               'https://image.tmdb.org/t/p/w500${series.backdropPath}'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         series.name,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         series.overview,
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     ), 
//                   ],
//                 ),
//               );
//             },
//           );
//         }
//       },
//     );
//   }

//   Widget _buildMyNetflix() {
//     return const Center(
//       child: Text(
//         'My Netflix',
//         style: TextStyle(color: Colors.white, fontSize: 24),
//       ),
//     );
//   }
// }


  

// Widget _buildHomeContent() {
//     return SingleChildScrollView( 
//       physics: const BouncingScrollPhysics(),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Featured Movie Banner
//           Center(
//             child: Container(
//               height: 360,
//               decoration: const BoxDecoration( 
//                 image: DecorationImage(
//                   image: AssetImage('assets/johnwick.jpg'),
//                   // fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           // Action Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: const [
//                   Icon(
//                     Icons.add,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   Text(
//                     'My List',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12,
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(width: 34),
//               Container(
//                 height: 40,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Colors.white,
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.play_arrow, size: 35),
//                     SizedBox(width: 5),
//                     Text(
//                       'Play',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 30),
//               Column(
//                 children: const [
//                   Icon(
//                     Icons.info_outline_rounded,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                   Text(
//                     'Info',
//                     style: TextStyle(color: Colors.white),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//              Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: 
//             Text(
//               'Trending Now',
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           // Movie Sections
//                        FutureBuilder(
//               future: topRatedSeries,
//                builder: (context,snapshot){
//                 if(snapshot.hasData){
//                   return CustomCarouselSlider(data: snapshot.data!);
//                 }else{
//                   return const SizedBox.shrink();
//                 }
              
//             }
//             ),
//           _buildMovieSection('gyhyh', trendingFuture),
//           _buildMovieSection('Now Playing', nowPlayingFuture),
//           _buildMovieSection('Upcoming Movies', upcomingFuture),
//           _buildMovieSection('New on Netflix', newOnNetflixFuture),
//         ],
//       ),
//     );
//   }
