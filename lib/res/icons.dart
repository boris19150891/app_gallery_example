import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'colors.dart';

// ignore: avoid_classes_with_only_static_members
class AppIcons {
  static const arrowBack = 'assets/arrow_back.svg';
  static Widget get greyFilter => SvgPicture.asset(
        'assets/img/filter.svg',
        color: AppColors.black.withOpacity(0.2),
        height: 20,
      );
  static Widget get delete => SvgPicture.asset(
        'assets/delete.svg',
        color: AppColors.red,
        height: 18,
      );
  static Widget get starOutlined => SvgPicture.asset(
        'assets/img/star-outlined.svg',
        color: AppColors.black,
        height: 40,
      );

  static Widget get starFilled => SvgPicture.asset(
        'assets/img/star-filled.svg',
        height: 40,
      );
}
