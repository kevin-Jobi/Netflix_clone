

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/tv_series_model.dart';

class CustomCarouselSlider extends StatelessWidget {
  final TvSeriesModel data;
  const CustomCarouselSlider({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: data.results.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          var url = data.results[index].backdropPath.toString();

          return GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 300,
                width: 200,
                child: CachedNetworkImage(
                  imageUrl: "$imageUrl$url",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 300,
          viewportFraction: 0.55,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          initialPage: 0,
        ),
      ),
    );
  }
}
























// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:netflix_clone/common/utils.dart';
// import 'package:netflix_clone/models/tv_series_model.dart';
// // import ;
// class CustomCarouselSlider extends StatelessWidget {
//   final TvSeriesModel data;
//   const CustomCarouselSlider({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SizedBox(
//       width:size.width ,
//       height: (size.height * 0.33<300)?300:size.height *0.33,
//       child: CarouselSlider.builder(
//         itemCount: data.results.length,
//         itemBuilder: (BuildContext context,int index,int realIndex){
//           var url = data.results[index].backdropPath.toString();

//         return  GestureDetector(
//           child: Column(
//             children: [
//               CachedNetworkImage(imageUrl: "$imageUrl$url",),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text(data.results[index].name)
//             ],
//           ));
//       },
//       options: CarouselOptions(
//               height: (size.height * 0.33<300)?300:size.height *0.33,
//               aspectRatio: 16/9 ,
//               reverse: false,
//               autoPlay: true,
//               autoPlayInterval:const Duration(seconds: 3),
//               autoPlayAnimationDuration:const Duration(milliseconds: 800),
//               enlargeCenterPage: true,
//               scrollDirection: Axis.horizontal,
//               initialPage: 0
//       ) ,
//       )
//     );
//   }
// }

