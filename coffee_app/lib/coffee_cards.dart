import 'package:coffee_app/coffee_details.dart';
import 'package:flutter/material.dart';

class CoffeeCards extends StatelessWidget {
  final String imageurl;
  final String title;

  const CoffeeCards({super.key, required this.imageurl, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CoffeeDetails()));
        print('clicked');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Card(
            color: Colors.brown[600],
            elevation: 7,
            child: SizedBox(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageurl),
                        radius: 40,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[200]),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
