import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/view/widgets/news_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),

      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1877F2),
        elevation: 0,
      ),

      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) => NewsItem(),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: 10,
      ),
    );
  }
}
