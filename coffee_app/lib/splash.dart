import 'package:coffee_app/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final sp = Provider.of<SplashProvider>(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      sp.initializeapp(context);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/Animation.json', // Add your Lottie file in the assets folder
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
