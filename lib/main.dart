import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/app_routs.dart';
import 'package:flutter_application_1/features/view/screens/details_screen.dart';
import 'package:flutter_application_1/features/view/screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouts.home,
      routes: {
        AppRouts.details: (context) => DetailsScreen(),
        AppRouts.home: (context) => HomeScreen(),
      },
    );
  }
}
