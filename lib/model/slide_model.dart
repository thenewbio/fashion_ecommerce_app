import 'package:fashion_ecommerce/core/constants/app_image.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: AppImage.yuri,
    title: '',
    description: '',
  ),
  Slide(
    imageUrl: AppImage.jessica,
    title: '',
    description: '',
  ),
  Slide(
    imageUrl: AppImage.jessica1,
    title: '',
    description: '',
  ),
];
