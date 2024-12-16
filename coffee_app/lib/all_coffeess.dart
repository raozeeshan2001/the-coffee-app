import 'package:coffee_app/all_apis.dart';
import 'package:coffee_app/coffee_cards.dart';
import 'package:flutter/material.dart';

class AllCoffeess extends StatelessWidget {
  AllApis allApis = AllApis();
  AllCoffeess({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Coffee',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 25, color: Colors.deepOrangeAccent[400]),
                )
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
                child: FutureBuilder(
                    future: allApis.getapi(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return CoffeeCards(
                                imageurl:
                                    snapshot.data![index].image.toString(),
                                title: snapshot.data![index].title.toString(),
                                description: snapshot.data![index].description
                                    .toString(),
                                ingrediant: snapshot.data![index].ingredients,
                              );
                            });
                      }
                    })),
          )
        ],
      ),
    ));
  }
}
