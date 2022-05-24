import 'package:image_search/model/photo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'photo_api_repository.dart';

class PixabayApi implements PhotoApiRepository {
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '27304298-b9ddd10cdfba9abea5656c0cb';

  @override
  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    if (client == null) {
      client ??= http.Client();
    }

    final response = await client.get(Uri.parse(
        '$baseUrl?key=$key&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}

String fakeJsonBody = """
{
"total": 23929,
"totalHits": 500,
"hits": [
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
},
{
"id": 2785074,
"pageURL": "https://pixabay.com/photos/cocker-spaniel-puppy-pet-canine-2785074/",
"type": "photo",
"tags": "cocker spaniel, puppy, pet",
"previewURL": "https://cdn.pixabay.com/photo/2017/09/25/13/12/cocker-spaniel-2785074_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/g8de567caef083bf2e0f00ab6e7a185394b91cfac4085d181efc088fc317f71eaa2c431b7270a6c73533bd9eae6d4805a6e61f76455f3b6560599ca474674b90e_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g0dd72c57ee69fe439b38f8c1bfbf13683404a4cd6dc8c3e3eed3b99a970dce9feb60c16ccd8533e29a1ae79e2c6efb7d3adbb7240aecb76b81c1ce156b94e657_1280.jpg",
"imageWidth": 3943,
"imageHeight": 2628,
"imageSize": 2235576,
"views": 724798,
"downloads": 464979,
"collections": 10439,
"likes": 1419,
"comments": 203,
"user_id": 6087762,
"user": "PicsbyFran",
"userImageURL": "https://cdn.pixabay.com/user/2020/05/08/15-39-26-890_250x250.jpg"
},
{
"id": 4415649,
"pageURL": "https://pixabay.com/photos/corgi-dog-pet-canine-rain-animal-4415649/",
"type": "photo",
"tags": "corgi, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gb261dd5aacd49f6e2ae0705d291af7ef69888750b8679e07e31968b68d37c1bf30a47e7c9ac379e2f903142313cd1151157d1775b26e26a3326013d6d334048b_640.jpg",
"webformatWidth": 640,
"webformatHeight": 423,
"largeImageURL": "https://pixabay.com/get/ga020c1873d4d80fc5a25a49db2602c132c91ddf5ed1472570181ededf0a9c68337282456d92e540d5a0e176fb6607838a862dfb206bc5b3bc6dbf7464a522f97_1280.jpg",
"imageWidth": 5130,
"imageHeight": 3396,
"imageSize": 3129143,
"views": 379609,
"downloads": 241950,
"collections": 7343,
"likes": 887,
"comments": 154,
"user_id": 8934889,
"user": "huoadg5888",
"userImageURL": ""
},
{
"id": 1903313,
"pageURL": "https://pixabay.com/photos/puppy-dog-pet-collar-dog-collar-1903313/",
"type": "photo",
"tags": "puppy, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/g0a5a71dc22d1177fc6512f74978c0ed958daa3f6f7725b13cc3776dea1a47adbcab1732bc302d1f63907c9e7e973b6d9601f0590f272232bcd9c71f47f2d8404_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g97db86e43a91f4920e416a6712bb561918da278d86229bb31a918927a1a2b89852081db6ff3b02e1986f589e74c2b5bf7391af3c2d62698ae752f751b8a24c18_1280.jpg",
"imageWidth": 5760,
"imageHeight": 3840,
"imageSize": 6406019,
"views": 782074,
"downloads": 486189,
"collections": 7180,
"likes": 975,
"comments": 135,
"user_id": 3194556,
"user": "3194556",
"userImageURL": ""
},
{
"id": 3277416,
"pageURL": "https://pixabay.com/photos/dog-pet-canine-animal-fur-snout-3277416/",
"type": "photo",
"tags": "dog, pet, canine",
"previewURL": "https://cdn.pixabay.com/photo/2018/03/31/06/31/dog-3277416_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/g1ef62d42ec3e8ca2b15e7aa43918f32e1dea08959c1bce3369cf807cc3491d1140099bb174a883aad097a072c3cdb05fb0230933f1bc1c090d7a02e708e2679b_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g0b40255a015e7c485c8ed66a8f93df1d65ad6d22e3df5bc9155a345356e3899895d525d02476414d3245b2f9bcbe7ca5549a82f5e2fb1e830a371f13b943a929_1280.jpg",
"imageWidth": 3939,
"imageHeight": 2626,
"imageSize": 1623766,
"views": 313280,
"downloads": 209487,
"collections": 6752,
"likes": 818,
"comments": 123,
"user_id": 9868721,
"user": "Vizslafotozas",
"userImageURL": "https://cdn.pixabay.com/user/2018/08/19/23-35-04-514_250x250.png"
},
{
"id": 1785760,
"pageURL": "https://pixabay.com/photos/rottweiler-puppy-dog-dogs-cute-1785760/",
"type": "photo",
"tags": "rottweiler, puppy, dog",
"previewURL": "https://cdn.pixabay.com/photo/2016/10/31/14/55/rottweiler-1785760_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gfcdd50ac3424e299cc3094cbd0e6cf88f648e9fcf1c17bffdf8a7b0cda0ba5c965a7010de696d69457712292256320c4d4a83c3954d67f7b184a9924ded2d4d1_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g8cfddbb4f7d33b1fd893a78e3b8c7cb5fcea05beb6878c211c3ae2e88e7553eaf22e0d89ab265cbab43f32f08e8db806c6c4638f454e52685d6f8d727cdd7ff4_1280.jpg",
"imageWidth": 5184,
"imageHeight": 3456,
"imageSize": 6006944,
"views": 350855,
"downloads": 233227,
"collections": 5708,
"likes": 664,
"comments": 129,
"user_id": 3648659,
"user": "kim_hester",
"userImageURL": ""
},
{
"id": 1047518,
"pageURL": "https://pixabay.com/photos/bulldog-dog-puppy-pet-black-dog-1047518/",
"type": "photo",
"tags": "bulldog, dog, puppy",
"previewURL": "https://cdn.pixabay.com/photo/2015/11/17/13/13/bulldog-1047518_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gc8cd8ed84df8cbdf248c18422a4262fed33951e62621eb20110ce5bb35d473d82224132ba203ed1370f162b72e170c76df37804ee815210c7b3648db2a62a6db_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/ge2245a221a9795024c878b5e102edfc7c6ee78a2a96544d2d51275f4488c9f54ef88a1be6b9604f20d21408fdcead44d9353d983c78fcc4dabd43aceb6b7b8dd_1280.jpg",
"imageWidth": 4300,
"imageHeight": 2867,
"imageSize": 2114094,
"views": 418394,
"downloads": 272351,
"collections": 5310,
"likes": 832,
"comments": 129,
"user_id": 1637107,
"user": "vlaaitje",
"userImageURL": "https://cdn.pixabay.com/user/2021/02/14/16-32-48-330_250x250.jpg"
},
{
"id": 1210559,
"pageURL": "https://pixabay.com/photos/labrador-retriever-dog-pet-1210559/",
"type": "photo",
"tags": "labrador retriever, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2016/02/19/15/46/labrador-retriever-1210559_150.jpg",
"previewWidth": 150,
"previewHeight": 112,
"webformatURL": "https://pixabay.com/get/ge46004cbd1736bf77303304f4901bc6ad887ae0b5f29a22c93a97e84b3f993e09ae2f6765f516b7f76f8368a61d9791d827c7cc7b4a27d9b260281c7d15c24c1_640.jpg",
"webformatWidth": 640,
"webformatHeight": 480,
"largeImageURL": "https://pixabay.com/get/gb7c752b260abcf51885ddbbc2a6c5e96d9d1ef94418b856c2a558e649de90c4ab4a45b2ef21c509a250e72750cb749a521539e9f305dd464719f5224813fc898_1280.jpg",
"imageWidth": 2560,
"imageHeight": 1920,
"imageSize": 962693,
"views": 691750,
"downloads": 142421,
"collections": 5359,
"likes": 498,
"comments": 91,
"user_id": 1892688,
"user": "Chiemsee2016",
"userImageURL": "https://cdn.pixabay.com/user/2022/05/10/07-03-44-588_250x250.jpg"
},
{
"id": 3042751,
"pageURL": "https://pixabay.com/photos/friends-dog-pet-woman-suit-sunset-3042751/",
"type": "photo",
"tags": "friends, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2017/12/27/14/02/friends-3042751_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/g9d8baa520e45e08f9faab46748cead6ca455d6b06a4d75ffdec385ad5fca036ff24799ebdd91115e1fbafde7884194fc5519f4762abae87d0fc7439218f19766_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/gd9f7139f82bf32e5c2b00ba687e26dd558d01b91842fb0e3706b034f5e5fe64ed8989fc0934f94777b125da2d08290b8e0079606849ad86558741d8dcef67e4f_1280.jpg",
"imageWidth": 6000,
"imageHeight": 4000,
"imageSize": 3377895,
"views": 274347,
"downloads": 174214,
"collections": 4728,
"likes": 884,
"comments": 132,
"user_id": 4191072,
"user": "Seaq68",
"userImageURL": "https://cdn.pixabay.com/user/2018/01/27/14-41-18-990_250x250.jpg"
},
{
"id": 1047521,
"pageURL": "https://pixabay.com/photos/puppy-dog-pet-cute-brown-dog-1047521/",
"type": "photo",
"tags": "puppy, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2015/11/17/13/13/puppy-1047521_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gd8efac527370f007a562b61917b1d5ecfbcea32ea994d364cd058d70cf8a51eb7f2785d6fa5cdfee2c488cf2853f7b00f447d3e0035c7a6544e2de04a320f321_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g500c166e8d2977a285e346443eb6767fc18c8b4ade631fc17753201083c076e25f64b2a8eea9506dae5791d54f5701fab034ed89b27595393417d8df8bd5df37_1280.jpg",
"imageWidth": 3400,
"imageHeight": 2266,
"imageSize": 2217481,
"views": 269654,
"downloads": 166410,
"collections": 4960,
"likes": 448,
"comments": 69,
"user_id": 1637107,
"user": "vlaaitje",
"userImageURL": "https://cdn.pixabay.com/user/2021/02/14/16-32-48-330_250x250.jpg"
},
{
"id": 7153955,
"pageURL": "https://pixabay.com/photos/nature-sky-dog-flowers-poppy-iran-7153955/",
"type": "photo",
"tags": "nature, sky, dog",
"previewURL": "https://cdn.pixabay.com/photo/2022/04/24/16/06/nature-7153955_150.jpg",
"previewWidth": 150,
"previewHeight": 100,
"webformatURL": "https://pixabay.com/get/gb9c54e230da75534fe91dbe079bca0afa88555634b79457394dfa55e6a2d0d0141eeef7d6fb52cc9598343d848ad8c534f9d92bcec8bba89a1b020ae92be8aa7_640.jpg",
"webformatWidth": 640,
"webformatHeight": 427,
"largeImageURL": "https://pixabay.com/get/g0625e7a3355c11371b7fa2bb5f6f5e70a0a64d6cdb69a6580f61473182410087482b95148cad8714783361ac4136a39788bc84215394e9307f8726adcba2fe98_1280.jpg",
"imageWidth": 5616,
"imageHeight": 3744,
"imageSize": 4057506,
"views": 19833,
"downloads": 15354,
"collections": 614,
"likes": 102,
"comments": 27,
"user_id": 25961161,
"user": "Shimaabedinzade",
"userImageURL": "https://cdn.pixabay.com/user/2022/03/02/23-24-35-743_250x250.jpg"
},
{
"id": 1733352,
"pageURL": "https://pixabay.com/photos/girl-sleep-lying-down-dog-pet-1733352/",
"type": "photo",
"tags": "girl, sleep, lying down",
"previewURL": "https://cdn.pixabay.com/photo/2016/10/12/02/56/girl-1733352_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gc7df19dc3c8004ae123fbbfc4228bf45d52a64aaa0c56197606929b822127f7f3a1a61c01fdb9c757fb79a38653ee9501584d7a535b68296eac02ea4a98bb7c2_640.jpg",
"webformatWidth": 640,
"webformatHeight": 425,
"largeImageURL": "https://pixabay.com/get/gd441610255e94ae0089b010f9b8e624add74426073d3af83266996960451352fd4ea9dd3ca066e27b3b28defd7fa6bd2bc88e7b15ac82b5f2fe7e85042cd134c_1280.jpg",
"imageWidth": 4256,
"imageHeight": 2832,
"imageSize": 3522232,
"views": 403380,
"downloads": 195165,
"collections": 3608,
"likes": 971,
"comments": 120,
"user_id": 3452518,
"user": "cuncon",
"userImageURL": "https://cdn.pixabay.com/user/2016/10/05/14-37-22-712_250x250.jpg"
},
{
"id": 1123016,
"pageURL": "https://pixabay.com/photos/maltese-dog-puppy-small-dog-1123016/",
"type": "photo",
"tags": "maltese, dog, puppy",
"previewURL": "https://cdn.pixabay.com/photo/2016/01/05/17/51/maltese-1123016_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gcea321e5949dd0eb47e608999b0888106fc19f40022bc34a2f8abfc98212d3fcaeec9f02bb941e0ad8222b9918c52602474f96e8e3ccde7eaeb750dd6fc42f24_640.jpg",
"webformatWidth": 640,
"webformatHeight": 425,
"largeImageURL": "https://pixabay.com/get/g8b0e600d2117270a9f15f049f1d594e8ef71bc7cdf873376c174b4b1b31823b85a395391b4e849926f9ef308f83013c0b869226d80f88c328f8a924086ff4050_1280.jpg",
"imageWidth": 4288,
"imageHeight": 2848,
"imageSize": 4239842,
"views": 465527,
"downloads": 237303,
"collections": 3959,
"likes": 555,
"comments": 108,
"user_id": 526143,
"user": "Pezibear",
"userImageURL": "https://cdn.pixabay.com/user/2019/03/28/14-46-04-252_250x250.jpg"
},
{
"id": 2222007,
"pageURL": "https://pixabay.com/photos/animals-dogs-cats-kittens-puppies-2222007/",
"type": "photo",
"tags": "animals, dogs, cats",
"previewURL": "https://cdn.pixabay.com/photo/2017/04/11/15/55/animals-2222007_150.jpg",
"previewWidth": 150,
"previewHeight": 49,
"webformatURL": "https://pixabay.com/get/g4de2c983a776b9beea122ae078c71e0bbd30157063111dc754aa289a4bfc79e77ffabacf39b4407d371fb257fd366f48b2622c1b973909d955b40c9faf9aad66_640.jpg",
"webformatWidth": 640,
"webformatHeight": 213,
"largeImageURL": "https://pixabay.com/get/g0853382bbcee62afc55c780e4921f4d1c978791b394e52e96eac74542568bbe7d4ae4e97d31cc9278b7c238895350981522cc22322891ee04125383bacde45bc_1280.jpg",
"imageWidth": 7087,
"imageHeight": 2362,
"imageSize": 3985446,
"views": 256464,
"downloads": 165004,
"collections": 3646,
"likes": 675,
"comments": 224,
"user_id": 201217,
"user": "blende12",
"userImageURL": "https://cdn.pixabay.com/user/2021/04/08/15-30-57-574_250x250.jpg"
},
{
"id": 838281,
"pageURL": "https://pixabay.com/photos/dog-view-cute-animal-portrait-eyes-838281/",
"type": "photo",
"tags": "dog, view, cute",
"previewURL": "https://cdn.pixabay.com/photo/2015/07/09/19/32/dog-838281_150.jpg",
"previewWidth": 150,
"previewHeight": 78,
"webformatURL": "https://pixabay.com/get/g1ad13b8b620341da2701c5c6a705316b540fd10a8857febf72a69e6c263e84d3b0ff0fa8d3d895d037120b2a0824f8e1_640.jpg",
"webformatWidth": 640,
"webformatHeight": 335,
"largeImageURL": "https://pixabay.com/get/g77d6d1fa30b88bdf9aa2579d20462da522ce7f9589f0e11b33c6bfc7bf6cf780b523b929401b72a9977bb8e2691c1c2630b3f5b9aa8cd9d7f3b43c744b4242b0_1280.jpg",
"imageWidth": 4322,
"imageHeight": 2265,
"imageSize": 1857636,
"views": 233966,
"downloads": 153976,
"collections": 3779,
"likes": 596,
"comments": 76,
"user_id": 1066559,
"user": "LUM3N",
"userImageURL": "https://cdn.pixabay.com/user/2017/10/05/20-01-51-531_250x250.jpg"
},
{
"id": 4118585,
"pageURL": "https://pixabay.com/photos/animal-dog-pet-puppy-breed-mammal-4118585/",
"type": "photo",
"tags": "animal, dog, pet",
"previewURL": "https://cdn.pixabay.com/photo/2019/04/10/23/51/animal-4118585_150.jpg",
"previewWidth": 150,
"previewHeight": 99,
"webformatURL": "https://pixabay.com/get/gb90c440f14b2a4f7b85a2f9e6988696965de42c9d971c381b28dcd95a8772c39261bd5a135939b49d9d1505df92880c5858b66004f53c68aabd59548b04937fd_640.jpg",
"webformatWidth": 640,
"webformatHeight": 426,
"largeImageURL": "https://pixabay.com/get/g30c6d6a34a32e603c578093e23f81b47c5d0d769549e213d86d74c6c7744d95e44bd2feaeeb5b5d6aeb3bdc06b104abdc39fedf96243d6bb0e5ca26bf342bc26_1280.jpg",
"imageWidth": 5180,
"imageHeight": 3453,
"imageSize": 1904885,
"views": 225209,
"downloads": 177684,
"collections": 3574,
"likes": 530,
"comments": 92,
"user_id": 11051907,
"user": "RandyRMM",
"userImageURL": "https://cdn.pixabay.com/user/2018/12/20/02-07-30-616_250x250.jpeg"
},
{
"id": 1519374,
"pageURL": "https://pixabay.com/photos/dachshund-puppy-pet-canine-animal-1519374/",
"type": "photo",
"tags": "dachshund, puppy, pet",
"previewURL": "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_150.jpg",
"previewWidth": 150,
"previewHeight": 113,
"webformatURL": "https://pixabay.com/get/g5f8460b898c3473bb52fba1b401d26a56c45639a54f98a44bc14ada0d3692a5e024011eea5668b5b4f3fab89782ecd511f66908aceee8624ac799dd68757f168_640.jpg",
"webformatWidth": 640,
"webformatHeight": 485,
"largeImageURL": "https://pixabay.com/get/g7e44fec8dbc017f8173965be3470afe20941f8f818b131b54747719e27d5444b5b02a8a607b3b2dfb815bb08118cf25f63acd7f214f363671191df78e9ef3492_1280.jpg",
"imageWidth": 3893,
"imageHeight": 2949,
"imageSize": 2441931,
"views": 335858,
"downloads": 221040,
"collections": 3417,
"likes": 679,
"comments": 115,
"user_id": 509903,
"user": "congerdesign",
"userImageURL": "https://cdn.pixabay.com/user/2022/03/01/12-32-48-46_250x250.jpg"
},
{
"id": 2606759,
"pageURL": "https://pixabay.com/photos/dog-cat-pets-mammals-animals-2606759/",
"type": "photo",
"tags": "dog, cat, pets",
"previewURL": "https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_150.jpg",
"previewWidth": 150,
"previewHeight": 106,
"webformatURL": "https://pixabay.com/get/g54038410b303660a83373d0742845f10021243e474913b7534d31db3efbd3ff3795e2933b09fac6f32427a8aecdd85ce3d8388c881e447c4d1081de4e25aab0f_640.jpg",
"webformatWidth": 640,
"webformatHeight": 455,
"largeImageURL": "https://pixabay.com/get/ga252142a59638c1db9aa2d94950119f542aa63a9eb00a6083334131c9d11bbe81901fe4f23e03bc5ab825a0f29ce0f81f91c266f1286826df0552115c15f7428_1280.jpg",
"imageWidth": 2175,
"imageHeight": 1548,
"imageSize": 896273,
"views": 181085,
"downloads": 111624,
"collections": 3486,
"likes": 547,
"comments": 76,
"user_id": 894430,
"user": "StockSnap",
"userImageURL": "https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg"
},
{
"id": 3344414,
"pageURL": "https://pixabay.com/photos/dog-adorable-animal-cute-happiness-3344414/",
"type": "photo",
"tags": "dog, adorable, animal",
"previewURL": "https://cdn.pixabay.com/photo/2018/04/23/14/38/dog-3344414_150.jpg",
"previewWidth": 150,
"previewHeight": 100,
"webformatURL": "https://pixabay.com/get/geaa917724b9d2af868db79454c8285bc735d75746f16f6f6c5c4c42c3db26816a7deb8ccaf4cd637e487e6a1878ec6696f5b15e6423b333e34ff8712e954797e_640.jpg",
"webformatWidth": 640,
"webformatHeight": 427,
"largeImageURL": "https://pixabay.com/get/gd04436a9aa13ed1cd45cd38ae5dfe4d5801d685dbf561371a3d2ab6ec7ff52ac8f11d5c746e4fa3f31e0de9fc7c07e36a1d56cc2dd49d60cc1abd9e5b12638ff_1280.jpg",
"imageWidth": 4000,
"imageHeight": 2670,
"imageSize": 2133095,
"views": 180836,
"downloads": 131388,
"collections": 3669,
"likes": 374,
"comments": 49,
"user_id": 8777334,
"user": "8777334",
"userImageURL": ""
}
]
}
""";