import 'package:coffee_app/coffee_cards.dart';
import 'package:flutter/material.dart';

class AllCoffeess extends StatelessWidget {
  const AllCoffeess({super.key});

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
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return CoffeeCards(
                        imageurl:
                            'https://plus.unsplash.com/premium_photo-1674327105074-46dd8319164b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        title: 'Lattee');
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
