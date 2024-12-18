import 'package:coffee_app/all_apis.dart';
import 'package:coffee_app/coffee_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllCoffeess extends StatelessWidget {
  //AllApis allApis = AllApis();
  AllCoffeess({super.key});

  @override
  Widget build(BuildContext context) {
    print('build called');
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('All Coffees'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Coffee Details',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Consumer<AllApis>(builder: (ctx, provider, _) {
                  print('consumer called');
                  if (provider.postlist.isEmpty) {
                    provider.getapi(); // Fetch data
                    return Center(
                      child:
                          CircularProgressIndicator(), // Show loading spinner
                    );
                  }
                  return ListView.builder(
                      itemCount: provider.postlist.length,
                      itemBuilder: (context, index) {
                        return CoffeeCards(
                          imageurl: provider.postlist[index].image.toString(),
                          title: provider.postlist[index].title.toString(),
                          description:
                              provider.postlist[index].description.toString(),
                          ingrediant: provider.postlist[index].ingredients,
                        );
                      });
                })
                // FutureBuilder(
                //     future: allApis.getapi(),
                //     builder: (context, snapshot) {
                //       if (!snapshot.hasData) {
                //         return Center(
                //           child: CircularProgressIndicator(),
                //         );
                //       } else {
                //         return ListView.builder(
                //             itemCount: snapshot.data!.length,
                //             itemBuilder: (context, index) {
                //               return CoffeeCards(
                //                 imageurl:
                //                     snapshot.data![index].image.toString(),
                //                 title: snapshot.data![index].title.toString(),
                //                 description: snapshot.data![index].description
                //                     .toString(),
                //                 ingrediant: snapshot.data![index].ingredients,
                //               );
                //             });
                //       }
                //     })
                ),
          )
        ],
      ),
    ));
  }
}
