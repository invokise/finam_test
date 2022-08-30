import 'dart:convert';
import 'package:finam_test/data/models/post_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static const String _url = 'https://www.reddit.com/r/flutterdev/new.json';
  late http.Response response;

  Future<PostModel> getPosts() async {
    try {
      response = await http.get(
        Uri.parse(_url),
      );
    } catch (e) {
      throw Exception(e);
    }

    return PostModel.fromJson(jsonDecode(response.body));
  }
}
