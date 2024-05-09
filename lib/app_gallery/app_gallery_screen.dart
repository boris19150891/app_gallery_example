import 'dart:io';
import 'package:app_gallery_example/app_gallery/app_gallery_screen_controller.dart';
import 'package:app_gallery_example/res/app_styles.dart';
import 'package:app_gallery_example/res/colors.dart';
import 'package:app_gallery_example/res/icons.dart';
import 'package:app_gallery_example/res/ui/buttons.dart';
import 'package:app_gallery_example/res/ui/custom_app_bar.dart';
import 'package:app_gallery_example/res/ui/white_board.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class HousingPhotoScreen extends GetView<NameDescriptionOfHousingController> {
  static const String routeName = '/housingPhotoScreen';

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => NameDescriptionOfHousingController());
    return Scaffold(
      appBar: CustomAppBar(
        title: 'housing_photo'.tr,
        rightWidget: Obx(
          () => Visibility(
            visible: controller.selectedImagePathList.isNotEmpty,
            child: GestureDetector(
              onTap: () => _deletingImagesBottomSheet(),
              child: AppIcons.delete,
            ),
          ),
        ),
      ),
      body: Obx(
        () => Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 16.0,
                        crossAxisSpacing: 16.0,
                      ),
                      itemCount: controller.photoList.length + 1,
                      itemBuilder: (BuildContext context, int indexImage) {
                        if (indexImage == 0) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainGrey,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                              ),
                              Obx(
                                () {
                                  if (controller.mounted$.value) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(6.0),
                                      child: AspectRatio(
                                        aspectRatio: 1 / 1,
                                        child: CameraPreview(
                                            controller.cameraController),
                                      ),
                                    );
                                  } else {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  }
                                },
                              ),
                              GestureDetector(
                                onTap: () => controller.getCameraFile(),
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: AppColors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Obx(
                            () => GestureDetector(
                              onTap: () => controller.selectBorder(indexImage),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: controller.selectedImagePathList
                                            .contains(controller.photoList
                                                .elementAt(indexImage - 1))
                                        ? Border.all(
                                            width: 5, color: AppColors.green)
                                        : null,
                                  ),
                                  child: Image.file(
                                    File(controller.photoList
                                        .elementAt(indexImage - 1)),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  if (MediaQuery.of(context).viewInsets.bottom == 0)
                    550.h
                  else
                    Obx(
                      () => Visibility(
                        visible: !controller.selectedImagePathList.isNotEmpty,
                        child: _galleryButton(),
                      ),
                    ),
                ],
              ),
            ),
            if (MediaQuery.of(context).viewInsets.bottom == 0)
              Positioned(
                left: 0,
                bottom: 0,
                child: Visibility(
                  visible: !controller.selectedImagePathList.isNotEmpty,
                  child: _galleryButton(),
                ),
              )
            else
              Container()
          ],
        ),
      ),
    );
  }

  Widget _galleryButton() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: Get.width,
        color: AppColors.white,
        child: AppButton(
          title: 'gallery'.tr,
          color: AppColors.brown,
          onTap: () => controller.selectImagesFromGallery(),
          // controller.getGalleryFile,
        ),
      ),
    );
  }

  void _deletingImagesBottomSheet() {
    Get.bottomSheet<HousingPhotoScreen>(
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Column(
                children: [
                  WhiteBoard([
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'delete_photo_?'.tr,
                        style: AppStyles.text15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.deleteImages();
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          'delete_photo'.tr,
                          style:
                              AppStyles.text15.copyWith(color: AppColors.red),
                        ),
                      ),
                    ),
                  ]),
                  8.h,
                  AppButton(
                    title: 'cancel'.tr,
                    color: AppColors.white,
                    textColor: AppColors.black,
                    onTap: () => Get.back(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.transparent,
    );
  }
}
