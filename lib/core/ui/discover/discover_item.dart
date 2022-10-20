import 'package:fashion_ecommerce/core/constants/app_image.dart';

class DiscoverItems {
  final String title;
  final String image;
  final int price;

  DiscoverItems(this.title, this.image, this.price);
}

final discoverList = [
  DiscoverItems('Women dress', AppImage.nina, 30),
  DiscoverItems('Women sweater', AppImage.nina1, 100),
  DiscoverItems('Women Hoddie', AppImage.yuri, 50),
  DiscoverItems('Women coat', AppImage.jessica, 200),
  DiscoverItems('Women dress', AppImage.jessica1, 600),
  DiscoverItems('Women dress', AppImage.lady, 200),
  DiscoverItems('Women dress', AppImage.yuri, 500),
  DiscoverItems('Women dress', AppImage.yuri, 300),
];
