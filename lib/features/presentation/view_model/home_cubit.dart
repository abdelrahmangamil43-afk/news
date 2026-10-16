import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/network/api_result.dart';
import 'package:flutter_application_1/features/data/api/app_api.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  //hold data

  List<Articles> articles = [];
  String? error;

  //handle logic
  void getAllArticls() async {
    emit(HomeLoading());
    final result = await Api.getNews();

    switch (result) {
      case Success<NewsModel>():
        articles = result.data.articles ?? [];
        emit(HomeSuccess());
      case Error<NewsModel>():
        error = result.error;
        emit(HomeErrorr());
    }
  }
}
