import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/app_routs.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:flutter_application_1/features/view/widgets/custome_image_news.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articles});
  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.details, arguments: articles);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeImageNews(image: articles.urlToImage ?? image),

            const SizedBox(height: 8),

            Text(
              articles.author ?? "",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffB0B3B8),
              ),
            ),

            const SizedBox(height: 4),

            Text(
              articles.title ?? "",

              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: .ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
