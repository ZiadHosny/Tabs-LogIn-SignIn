import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login_signup/api/articleModel.dart';

class Mockapi {
  Future<List<Article>> fetchArticles() async {
    var res = await http.get(
        Uri.parse('https://62d4154fcd960e45d452f790.mockapi.io/api/article'));

    var jsonRes = jsonDecode(res.body);

    if (res.statusCode == 200) {
      return (jsonRes as List).map((e) => Article.fromJson(e)).toList();
    } else {
      throw Exception('Failed To Load Api');
    }
  }
}
