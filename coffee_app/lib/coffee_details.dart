import 'package:coffee_app/all_apis.dart';
import 'package:coffee_app/cofee_model.dart';

import 'package:flutter/material.dart';

class CoffeeDetails extends StatelessWidget {
  final String description;
  final List<String>? ingrediant;
  final String image;
  CoffeeDetails(
      {super.key,
      required this.description,
      required this.ingrediant,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Description',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Card(
                    color: Colors.brown[100],
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          //child: Image(image: NetworkImage(image)),
                          backgroundImage: NetworkImage(image),
                          radius: 50,
                        ),
                        //
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.brown[600],
                            ),
                            height: 200,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                description,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[50]),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.brown[600],
                            ),
                            height: 130,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: SizedBox(
                                height: 150,
                                child:
                                    //  ListView.builder(
                                    //     itemCount: ingrediant!.length,
                                    //     itemBuilder: (context, index) {
                                    //       return Padding(
                                    //         padding:
                                    //             EdgeInsets.symmetric(vertical: 2.0),
                                    //         child: Text(
                                    //           ingrediant![index],
                                    //           style: TextStyle(
                                    //               fontSize: 15,
                                    //               fontWeight: FontWeight.normal,
                                    //               color: Colors.grey[50]),
                                    //         ),

                                    //       );
                                    //     }),
                                    ListView.builder(
                                  itemCount: ingrediant!.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                          child: Text(
                                            ingrediant![index],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey[50],
                                            ),
                                          ),
                                        ),
                                        if (index <
                                            ingrediant!.length -
                                                1) // Avoid divider after the last item
                                          Divider(
                                            color: Colors.grey[
                                                300], // Adjust the color of the divider
                                            thickness:
                                                1, // Adjust the thickness of the divider
                                            indent:
                                                5, // Optional: Add some indentation
                                            // Optional: Add some end indentation
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
