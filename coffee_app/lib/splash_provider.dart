import 'package:coffee_app/all_coffeess.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool isloading = false;
  Future<void> initializeapp(BuildContext context) async {
    if (isloading) {
      return;
    }
    isloading = true;
    await Future.delayed(Duration(seconds: 3));
    notifyListeners();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AllCoffeess()),
    );
  }
}
