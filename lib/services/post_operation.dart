import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:music_player_app/models/post.dart';
import 'package:http/http.dart' as http;

List<Post> parsePost(String reponseBody) {
  var list = json.decode(reponseBody) as List<dynamic>;
  List<Post> posts = list.map((model) => Post.fromJson(model)).toList();
  return posts;
}

Future<List<Post>> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    return compute(parsePost, response.body);
  } else {
    throw Exception("Request API Error");
  }
}
