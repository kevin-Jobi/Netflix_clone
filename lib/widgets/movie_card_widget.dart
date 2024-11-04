import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/upcoming_models.dart';

class MovieCardWidget extends StatelessWidget {
  final Future<UpcomingMovieModel> future;
  final String headLineText;
  const MovieCardWidget({super.key, required this.future, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
       builder: (context,snapshot){
        if(snapshot.hasError){
          return Center(
            child: Text('Error${snapshot.error}'),
          );
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
    var data =  snapshot.data!.results;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headLineText,
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount:data.length ,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(5),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                   ) ,
                   child: Image.network('$imageUrl${data[index].posterPath}'),
              );
            }
            ),
          )
      ],
    );
    });
  }
}

// 




// import 'package:flutter/material.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/upcoming_models.dart';

// class MovieCardWidget extends StatelessWidget {
//   final Future<UpcomingMovieModel> future;
//   final String headLineText;

//   const MovieCardWidget({super.key, required this.future, required this.headLineText});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<UpcomingMovieModel>(
//       future: future,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // Show loading indicator while waiting for the data
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           // Show error message if something went wrong
//           return const Center(child: Text("Error loading data"));
//         } else if (!snapshot.hasData || snapshot.data!.results.isEmpty) {
//           // Show a message if data is null or empty
//           return const Center(child: Text("No data available"));
//         }

//         var data = snapshot.data!.results;

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               headLineText,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               height: 180, // Set a fixed height for the horizontal list view
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: const EdgeInsets.only(right: 8.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 6,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         '$imageUrl${data[index].posterPath}',
//                         fit: BoxFit.cover,
//                         width: 120,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
