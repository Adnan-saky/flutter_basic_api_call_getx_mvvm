import 'package:http/http.dart' as http;

import '../model/post.dart';

class ApiService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      print(json.toString());
      return postFromJson(json);
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
