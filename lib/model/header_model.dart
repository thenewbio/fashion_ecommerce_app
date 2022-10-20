import 'package:fashion_ecommerce/core/constants/app_image.dart';

class Header {
  final String title;
  final String image;

  Header({required this.title, required this.image});
}

final headerList = [
  Header(title: 'All', image: AppImage.uni),
  Header(title: 'Man', image: AppImage.man),
  Header(title: 'Woman', image: AppImage.woman),
  Header(title: 'Kid', image: AppImage.child)
];
