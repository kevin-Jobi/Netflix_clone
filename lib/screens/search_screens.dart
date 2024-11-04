import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/search_model.dart';
import 'package:netflix_clone/services/api_services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
ApiServices apiServices = ApiServices();

SearchModel? searchModel;




void search(String query){
  apiServices.getSearchedMovie(query).then((results)  {
    setState(() {
      searchModel = results;
    });
  });

}

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              controller: searchController ,
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
                onChanged: (value){
                  if(value.isEmpty){
                    }else{
                    search(searchController.text);
                  }
                },
            ),
            if (searchModel !=null)
            // ? const SizedBox.shrink()
            // :
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                // shrinkWrap: true,  
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: searchModel?.results.length,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 5,
                // childAspectRatio: 1.2/2
                childAspectRatio: 1 / 1.8
                ),
                 itemBuilder: (context,index){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:searchModel!.results[index].backdropPath==null
                        ?Image.asset(
                          "assets/logo.png",
                          height: 170,
                          ) : CachedNetworkImage(
                          imageUrl:
                           "$imageUrl${searchModel!.results[index].backdropPath}",
                           height: 140,
                           width: double.infinity,
                           fit: BoxFit.cover,
                           ),
                      ),
                      const SizedBox(height: 5,),
                         SizedBox(
                          width: 90,
                           child: Text(
                            searchModel!.results[index].originalTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                           style: const TextStyle(fontSize: 14),
                           textAlign: TextAlign.center,
                           ),
                         )
                    ],
                  );
              }),
            )
          ],
        )
      ),
    );
  }
}




