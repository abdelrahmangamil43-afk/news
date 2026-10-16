import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/network/api_result.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:flutter_application_1/features/presentation/view/widgets/news_item.dart';
import 'package:flutter_application_1/features/data/api/app_api.dart';
import 'package:flutter_application_1/features/presentation/view_model/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = HomeCubit();
    cubit.getAllArticls();
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

      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is HomeSuccess) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) =>
                  NewsItem(articles: cubit.articles[index]),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: cubit.articles.length,
            );
          }
          if (state is HomeErrorr) {
            return Center(
              child: Text(
                cubit.error ?? "",
                style: TextStyle(fontSize: 20, color: Colors.red),
                textAlign: .center,
              ),
            );
          }
          return Center(child: (CircularProgressIndicator()));
        },
      ),
    );
  }
}
