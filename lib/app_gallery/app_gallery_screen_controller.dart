import 'package:app_gallery_example/app_gallery/services/image_picker_service.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameDescriptionOfHousingController extends GetxController {
  NameDescriptionOfHousingController({ImagePickerService pickerService})
      : _pickerService = pickerService ?? Get.find();

  final ImagePickerService _pickerService;
  final imageFile = ''.obs;

  final photoList = <String>[].obs;
  final selectedImagePathList = <String>[].obs;

  CameraController cameraController;
  final mounted$ = false.obs;
  CameraDescription backCamera;

  @override
  Future onInit() async {
    super.onInit();
    final cameras = await availableCameras();
    backCamera = cameras[0];
    await _mountCamera();
    debugPrint('CameraController has been initialized');
  }

  Future _mountCamera() async {
    mounted$.value = false;
    cameraController = CameraController(
      backCamera,
      ResolutionPreset.medium,
    );
    await cameraController.initialize();
    debugPrint('Camera has been set');
    mounted$.value = true;
  }

  Future getCameraFile() async {
    imageFile.value = await _pickerService.getCameraFile();
    if (imageFile.value != '') {
      photoList.add(imageFile.value);
      await cameraController.initialize();
    }
  }

  void selectBorder(int indexImage) {
    final imagePath = photoList.elementAt(indexImage - 1);
    final selectedIndex = selectedImagePathList.contains(imagePath);
    if (selectedIndex) {
      selectedImagePathList
          .removeWhere((n) => n == (photoList.elementAt(indexImage - 1)));
    } else {
      selectedImagePathList.add(photoList.elementAt(indexImage - 1));
    }
    debugPrint('$indexImage, $selectedIndex');
  }

  void deleteImages() {
    photoList.removeWhere((n) => selectedImagePathList.contains(n));
    selectedImagePathList.clear();
  }

  Future selectImagesFromGallery() async {
    final resultAssets = await _pickerService.getMultiGalleryFile();
    photoList.addAll(resultAssets);
    resultAssets.clear();
  }

  @override
  void onClose() {
    cameraController?.dispose();
    debugPrint('CameraController has been destroyed');
    super.onClose();
  }
}
