import 'dart:developer';
import 'package:app_gallery_example/res/colors.dart';
import 'package:app_gallery_example/res/locales.dart';
import 'package:app_gallery_example/res/translations.dart';
import 'package:app_gallery_example/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

const locale = Locale('ru', 'RU');

class AppGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AppGalleryExample',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: AppColors.mainColor,
        scaffoldBackgroundColor: AppColors.mainGrey,
        buttonColor: AppColors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: AppColors.green,
        ),
      ),
      navigatorKey: Get.key,
      initialRoute: OwnerRouteNames.housingPhotoScreen,
      translations: Messages(),
      getPages: routes,
      locale: locale,
      fallbackLocale: const Locale(AppLocales.en),
      logWriterCallback: _writeLog,
    );
  }
}

Future _writeLog(
    String text, {
      bool isError = false,
    }) async {
  if (isError) {
    await Future.microtask(() => log('** ERROR ** $text'));
    return;
  }

  await Future.microtask(() => log('-> $text'));
}
