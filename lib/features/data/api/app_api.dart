// api key d1c54f955b5e413bb4d1a4bf32b20a87
import 'dart:convert';

import 'package:flutter_application_1/core/network/api_result.dart';
import 'package:flutter_application_1/features/data/model/news_model.dart';
import 'package:http/http.dart' as http;
import 'package:material_ui/material_ui.dart';

abstract class Api {
  static Future<ApiResult<NewsModel>> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
          "https://newsapi.org/v2/everything?q=bitcoin&apiKey=d1c54f955b5e413bb4d1a4bf32b20a87",
        ),
      );
      var responseBody = response.body;
      var json = jsonDecode(responseBody); //convert from string to json
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Success(NewsModel.fromJson(json));
      } else {
        return Error(json["message"]);
      }
      //convert to dart
    } catch (e) {
      return Error(e.toString());
    }
  }
}
