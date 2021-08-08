import 'package:app_gallery_example/res/app_styles.dart';
import 'package:app_gallery_example/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:speed_up/speed_up.dart';


class WhiteBoard extends StatelessWidget {
  const WhiteBoard(
    this.children, {
    Key key,
    this.title,
    this.style,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String title;
  final TextStyle style;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final count = children.length * 2 - 1;

    final fixedList = Iterable<int>.generate(count).toList();

    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          if (!isStringNullOrEmpty(title))
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 12),
              child: Text(
                title,
                style: style ??
                    AppStyles.text13.copyWith(
                      color: AppColors.black.withOpacity(.2),
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
                children: fixedList
                    .map((e) => e % 2 != 0
                        ? Container(
                            color: AppColors.appBarLightBackground,
                            width: double.infinity,
                            height: 1,
                          )
                        : children.elementAt((e / 2).floor()))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
