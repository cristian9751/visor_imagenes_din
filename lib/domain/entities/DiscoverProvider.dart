import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:prac_2_cris/shared/data/ModelLocalImage.dart';
import 'package:prac_2_cris/shared/data/local_image_posts.dart';

import 'ImagePost.dart';

class DiscoverProvider extends ChangeNotifier {
  List<ImagePost> loadedImagePosts = [];

  bool isLoaded = false;




  loadImages() async{
     await Future.delayed(const Duration(seconds : 3), () {
       for(Map<String, dynamic> postMap in imagePosts) {
          loadedImagePosts.add(ModelLocalImage.fromMap(postMap).toImagePost());
       }
     });

     isLoaded = true;

     notifyListeners();
  }
}