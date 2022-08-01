import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodel/post_list_viewmodel.dart';

class HomePage extends StatelessWidget {
  final PostListViewModel postListController = Get.put(PostListViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Data From API')),
      ),
      body: SafeArea(
        child: Obx(
          () => Visibility(
            visible: postListController.isLoaded.value,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ListView.builder(
              reverse: true,
              cacheExtent: 25,
              physics: const ScrollPhysics(),
              itemCount: postListController.posts!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              postListController.posts![index].name,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              postListController.posts![index].email,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w100),
                            ),
                            Text(
                              postListController.posts![index].body,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
