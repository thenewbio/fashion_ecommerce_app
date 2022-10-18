import 'package:fashion_ecommerce/core/constants/app_image.dart';

class DiscoverItems {
  final String title;
  final String image;
  final int price;

  DiscoverItems(this.title, this.image, this.price);
}

final discoverList = [
  DiscoverItems('Women dress', AppImage.nina, 200),
  DiscoverItems('Women dress', AppImage.nina1, 200),
  DiscoverItems('Women dress', AppImage.yuri, 200),
  DiscoverItems('Women dress', AppImage.jessica, 200),
  DiscoverItems('Women dress', AppImage.jessica1, 200),
  DiscoverItems('Women dress', AppImage.lady, 200),
  DiscoverItems('Women dress', AppImage.yuri, 200),
  DiscoverItems('Women dress', AppImage.yuri, 200),
];
