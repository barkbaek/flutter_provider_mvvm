import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream이 잘 동작해야 한다', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(viewModel.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(Duration(milliseconds: 500));
    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 2425121,
    "pageURL": "https://pixabay.com/photos/man-woman-dog-pet-pug-owners-2425121/",
    "type": "photo",
    "tags": "man, woman, dog",
    "previewURL": "https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/gcd7f45d3532fe3ef97c445133c011ae21ae913499948788dca73f0f6c908cc95ddef95153c24a6e3ccebd96c8f3a1314598cf643c7f2b5f070ce017f04ca44c1_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/g5b1b2cb503d19768fe5b419f43dc531230454db29c9d06f5f8e85b3eef2c64a96f45970536b0c31596dccb6050e5c34b020590de9a2f1a874a10f6aaa28e285b_1280.jpg",
    "imageWidth": 4460,
    "imageHeight": 2973,
    "imageSize": 2293248,
    "views": 1207332,
    "downloads": 771270,
    "collections": 11103,
    "likes": 2006,
    "comments": 298,
    "user_id": 5688709,
    "user": "5688709",
    "userImageURL": ""
  },
  {
    "id": 3715733,
    "pageURL": "https://pixabay.com/photos/pets-cat-dog-animals-mammals-3715733/",
    "type": "photo",
    "tags": "pets, cat, dog",
    "previewURL": "https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/g498d3baa6e9c6dc65f2649ec4cc319bc453d985953c254c874dd7fa3ef156ab2d09b2eb9a851c7275e137e581866aaf8725f3f5ac09aa7afc92765882507a4e2_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/g7613b8d5eba5b40c38ea19fd20b177373d9bacd40bef6f14fb469560aadd8692c3cd46e7507956757a465fc75e528a93a85f3d2fb7f563209400bb8c01a9754a_1280.jpg",
    "imageWidth": 3398,
    "imageHeight": 2265,
    "imageSize": 1187229,
    "views": 388165,
    "downloads": 237196,
    "collections": 11458,
    "likes": 720,
    "comments": 186,
    "user_id": 8934889,
    "user": "huoadg5888",
    "userImageURL": ""
  }
];