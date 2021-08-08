import 'package:app_gallery_example/res/app_styles.dart';
import 'package:app_gallery_example/res/colors.dart';
import 'package:app_gallery_example/res/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speed_up/speed_up.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    this.title,
    this.titleWidget,
    this.withBackOrCancel = true,
    this.isNeedBackText = true,
    this.onPressedBack,
    this.infoAtNameRow,
    this.onPressedName,
    this.prefixIconAtName = false,
    this.postfixTextAndIconAtName = false,
    this.postfixText,
    this.postfixIcon,
    this.onPressedPostfix,
    this.rightWidget,
    this.leftWidget,
    this.onPressedLeftWidget,
    this.titleMaxLines = 3,
    this.bgColor = AppColors.appBarBackground,
  });

  final String title;
  final Widget titleWidget;
  final bool withBackOrCancel;
  final bool isNeedBackText;
  final Function() onPressedBack;
  final Widget infoAtNameRow;
  final Function() onPressedName;
  final bool prefixIconAtName;
  final bool postfixTextAndIconAtName;
  final String postfixText;
  final Widget postfixIcon;
  final Function() onPressedPostfix;
  final Widget rightWidget;
  final Widget leftWidget;
  final Function() onPressedLeftWidget;
  final Color bgColor;
  final int titleMaxLines;

  Size get h => getTextSize(
        title,
        AppStyles.header,
        maxLine: titleMaxLines,
        maxWidth: Get.width - 40, // - side paddings
      );

  @override
  Size get preferredSize => Size.fromHeight(
        h.height + (hasSecondRow ? 65 : 35),
      );

  bool get hasSecondRow =>
      prefixIconAtName ||
      !isStringNullOrEmpty(title) ||
      titleWidget != null ||
      infoAtNameRow != null ||
      !isStringNullOrEmpty(postfixText) ||
      postfixIcon != null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: bgColor,
        padding: const EdgeInsets.only(left: 12.0, top: 10.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (withBackOrCancel == false) 20.h else _firstRow(),
            if (hasSecondRow)
              Section(
                [
                  11.h,
                  _secondRow(),
                ],
                padding: EdgeInsets.all(0),
              ),
          ],
        ),
      ),
    );
  }

  Row _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (leftWidget == null)
          Visibility(
            visible: isNeedBackText,
            child: GestureDetector(
              onTap: onPressedBack ?? Get.back,
              child: Row(
                children: [
                  Text(
                    '',
                    style: AppStyles.text17.copyWith(
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          GestureDetector(
            onTap: onPressedLeftWidget ?? Get.back,
            child: leftWidget,
          ),
        if (rightWidget != null) rightWidget
      ],
    );
  }

  Padding _secondRow() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (prefixIconAtName)
            Expanded(
              child: Row(
                children: [
                  AppIcons.greyFilter,
                  5.w,
                  Text(
                    title ?? '',
                    maxLines: titleMaxLines,
                    style: AppStyles.header,
                  ),
                ],
              ),
            )
          else
            Expanded(
              child: titleWidget ??
                  Text(
                    title ?? '',
                    maxLines: titleMaxLines,
                    style: AppStyles.text22.copyWith(
                      fontFamily: AppStyles.fontBold,
                      color: AppColors.black,
                    ),
                  ),
            ),
          if (postfixTextAndIconAtName)
            GestureDetector(
              onTap: onPressedPostfix,
              child: Container(
                height: 50,
                color: AppColors.transparent,
                child: Row(
                  children: [
                    Text(
                      postfixText,
                      style: AppStyles.text13
                          .copyWith(color: AppColors.black.withOpacity(0.2)),
                    ),
                    5.w,
                    postfixIcon,
                  ],
                ),
              ),
            )
          else
            infoAtNameRow ??
                SizedBox(
                  height: 0,
                  width: 0,
                ),
        ],
      ),
    );
  }
}
