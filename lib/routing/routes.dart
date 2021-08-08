import 'package:app_gallery_example/app_gallery/app_gallery_screen.dart';
import 'package:get/get.dart';

class OwnerRouteNames {
  static const housingPhotoScreen = HousingPhotoScreen.routeName;
}

final List<GetPage> routes = [
  GetPage(
    name: OwnerRouteNames.housingPhotoScreen,
    page: () => HousingPhotoScreen(),
  ),
];
