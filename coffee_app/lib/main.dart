import 'package:coffee_app/all_apis.dart';
import 'package:coffee_app/all_coffeess.dart';
import 'package:coffee_app/splash.dart';
import 'package:coffee_app/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AllApis()),
        ChangeNotifierProvider(
            create: (context) => SplashProvider()), // Add other providers here
        // Add more providers as needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
