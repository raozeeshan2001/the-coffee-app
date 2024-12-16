import 'package:coffee_app/coffee_details.dart';
import 'package:flutter/material.dart';

class CoffeeCards extends StatelessWidget {
  final String? imageurl;
  final String? title;
  final String? description;
  final List<String>? ingrediant;

  CoffeeCards(
      {super.key,
      this.imageurl,
      this.title,
      this.description,
      this.ingrediant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CoffeeDetails(
                      description: description ?? 'no description available',
                      ingrediant: ingrediant ?? [],
                    )));
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
                        backgroundImage: NetworkImage(imageurl ?? ''),
                        radius: 40,
                      ),
                    ),
                    Text(
                      title ?? 'no title',
                      style: TextStyle(
                          fontSize: 15,
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
