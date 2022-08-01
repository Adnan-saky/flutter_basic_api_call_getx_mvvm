import '../model/post.dart';

class PostViewModel {
  final Post? post;

  PostViewModel({this.post});

  String get name {
    return post!.name;
  }

  String get body {
    return post!.body!;
  }

  String get email {
    return post!.email;
  }
}
