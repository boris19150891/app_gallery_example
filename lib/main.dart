import 'package:app_gallery_example/app.dart';
import 'package:app_gallery_example/app_gallery/services/image_picker_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ImagePickerService());
  runApp(AppGallery());
}
