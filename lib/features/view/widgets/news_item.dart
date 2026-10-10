import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routs/app_routs.dart';
import 'package:flutter_application_1/features/view/widgets/custome_image_news.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRouts.details);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeImageNews(),

            const SizedBox(height: 8),

            const Text(
              "Europe",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffB0B3B8),
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              "Russian warship: Moskva sinks in Black Sea",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
