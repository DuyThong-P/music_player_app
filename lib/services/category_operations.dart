import 'package:music_player_app/models/category.dart';

class CategoryOperations {
  CategoryOperations._();
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Songs',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkrovgOqx10WAux_uyLckMEwzhquQ1mVmHg&s'),
      Category('JB Hits',
          'https://is2-ssl.mzstatic.com/image/thumb/Music126/v4/81/a4/dc/81a4dc50-8d7e-6ae5-71d3-f83393348248/15UMGIM59807.rgb.jpg/256x256bb.jpg'),
      Category('Charlie Puth ',
          'https://styles.redditmedia.com/t5_392oe/styles/communityIcon_lupsgiwkz2b91.jpg?format=pjpg&s=72bf5b8a9151f3ca3b306efe075e3f43967b67d5'),
      Category('Top Hits VN',
          'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da840c7831a1cdecfbcef3a45628')
    ];
  }
}
