import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/app_routs.dart';
import 'package:flutter_application_1/features/presentation/view/screens/details_screen.dart';
import 'package:flutter_application_1/features/presentation/view/screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.details: (context) => DetailsScreen(),
        AppRoutes.home: (context) => HomeScreen(),
      },
    );
  }
}
