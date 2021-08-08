import 'package:app_gallery_example/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key key,
      @required this.title,
      @required this.onTap,
      this.color = AppColors.black,
      this.border,
      this.textColor = AppColors.white,
      this.isNeedImage = false,
      this.assetName,
      this.iconColor,
      this.width,
      this.height})
      : super(key: key);

  final String title;
  final Color color;
  final GestureTapCallback onTap;
  final Border border;
  final Color textColor;
  final bool isNeedImage;
  final String assetName;
  final Color iconColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: width,
        height: height ?? 50.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11),
          border: border,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: isNeedImage
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      assetName,
                      color: iconColor,
                      width: 14,
                      height: 14,
                    ),
                    8.w,
                    Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              : Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}
