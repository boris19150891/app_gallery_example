import 'package:app_gallery_example/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// ignore: avoid_classes_with_only_static_members
class AppStyles {
  static const fontBold = 'LabGrotesque-Bold';
  static const fontMedium = 'LabGrotesque-Medium';
  static const fontLight = 'LabGrotesque-Light';
  static const fontRegular = 'LabGrotesque-Regular';

  static const text8 = TextStyle(
    fontSize: 8,
    fontFamily: fontRegular,
  );

  static const text10 = TextStyle(
    fontSize: 10,
    fontFamily: fontRegular,
  );

  static const text11 = TextStyle(
    fontSize: 11,
    fontFamily: fontRegular,
  );

  static const text12 = TextStyle(
    fontSize: 12,
    fontFamily: fontRegular,
  );

  static const text13 = TextStyle(
    fontSize: 13,
    fontFamily: fontRegular,
  );

  static const text14 = TextStyle(
    fontSize: 14,
    fontFamily: fontRegular,
  );

  static const text15 = TextStyle(
    fontSize: 15,
    fontFamily: fontRegular,
  );

  static const text16 = TextStyle(
    fontSize: 16,
    fontFamily: fontRegular,
  );

  static const text17 = TextStyle(
    fontSize: 17,
    fontFamily: fontRegular,
  );

  static const text18 = TextStyle(
    fontSize: 18,
    fontFamily: fontRegular,
  );

  static const text20 = TextStyle(
    fontSize: 20,
    fontFamily: fontRegular,
  );

  static const text22 = TextStyle(
    fontSize: 22,
    fontFamily: fontRegular,
  );

  static const text25 = TextStyle(
    fontSize: 25,
    fontFamily: fontRegular,
  );

  static const text28 = TextStyle(
    fontSize: 28,
    fontFamily: fontRegular,
  );

  static const text32 = TextStyle(
    fontSize: 32,
    fontFamily: fontRegular,
  );

  static const text35 = TextStyle(
    fontSize: 35,
    fontFamily: fontRegular,
  );

  static const error = TextStyle(
    color: AppColors.red,
    fontSize: 14,
  );

  static TextStyle get greyText =>
      text13.copyWith(color: AppColors.black.withOpacity(.3));

  static TextStyle header = AppStyles.text22.copyWith(
    fontFamily: AppStyles.fontBold,
    color: AppColors.black,
  );
}
