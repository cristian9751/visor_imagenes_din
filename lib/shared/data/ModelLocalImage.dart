import '../../domain/entities/ImagePost.dart';

class ModelLocalImage {
    String name;
    String imgUrl;
    int? likes;
    int? views;

    ModelLocalImage({required this.name, required this.imgUrl, this.likes, this.views});

    factory ModelLocalImage.fromMap(Map<String,  dynamic> localImageMap) {
        return ModelLocalImage(
            name : localImageMap['name'] ?? "Nombre de la imagen",
            imgUrl : localImageMap['imgUrl'],
            likes : localImageMap['likes'] ?? 0,
            views : localImageMap['views'] ?? 0
        );
    }


    ImagePost toImagePost() {
        return ImagePost(sub: name, url: imgUrl, likes: likes, views: views);
    }

}