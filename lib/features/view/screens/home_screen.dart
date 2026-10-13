import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/network/api_result.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:flutter_application_1/features/view/widgets/news_item.dart';
import 'package:flutter_application_1/features/data/api/app_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Articles> articles = [];
  bool isLoading = true;
  String? error;
  @override
  void initState() {
    super.initState();
    getAllArticls();
  }

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

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : error != null
          ? Center(
              child: Text(
                error ?? "",
                style: TextStyle(fontSize: 20, color: Colors.red),
                textAlign: .center,
              ),
            )
          : ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) =>
                  NewsItem(articles: articles[index]),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: articles.length,
            ),
    );
  }

  void getAllArticls() async {
    isLoading = true;
    final result = await Api.getNews();

    switch (result) {
      case Success<NewsModel>():
        articles = result.data.articles ?? [];

      case Error<NewsModel>():
        error = result.error;
    }

    isLoading = false;
    setState(() {});
  }
}
