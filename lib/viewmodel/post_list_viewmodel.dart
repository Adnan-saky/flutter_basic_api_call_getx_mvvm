import 'package:get/get.dart';

import '../service/Api_service.dart';
import 'post_viewmodel.dart';

class PostListViewModel extends GetxController {
  List<PostViewModel>? posts = RxList<PostViewModel>();
  var isLoaded = false.obs;

  getData() async {
    final result = await ApiService().getPosts();
    if (result != null) {
      posts = result.map((p) => PostViewModel(post: p)).toList();
      print("getdata");
      isLoaded.value = true;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}
