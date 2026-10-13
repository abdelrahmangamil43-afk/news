import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:flutter_application_1/features/view/widgets/custome_image_news.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Articles;
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        title: const Text(
          'Details News',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1877F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeImageNews(image: arg.urlToImage ?? ""),

            SizedBox(height: 30),

            Text(
              arg.title ?? "",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xffE4E6EB),
              ),
            ),

            SizedBox(height: 10),

            Text(
              arg.author ?? "",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xffB0B3B8),
              ),
            ),
            SizedBox(height: 10),

            Text(
              arg.content ?? "",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffE4E6EB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
