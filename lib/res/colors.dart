import 'package:flutter/material.dart';

/// Давайте называть цвета по контексту применения, а не по HEXXX
abstract class AppColors {
  /// Главный цвет приложения
  static const MaterialColor mainColor = MaterialColor(
    0xFF39967A,
    <int, Color>{
      50: Color(0xFF39967A),
      100: Color(0xFF39967A),
      200: Color(0xFF39967A),
      300: Color(0xFF39967A),
      400: Color(0xFF39967A),
      500: Color(0xFF39967A),
      600: Color(0xFF39967A),
      700: Color(0xFF39967A),
      800: Color(0xFF39967A),
      900: Color(0xFF39967A),
    },
  );

//NEW COLOR
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF030303);
  static const Color brown = Color(0xFF5F5350);
  static const Color midBrown = Color(0xFF514744);
  static const Color darkBrown = Color(0xFF3F3735);
  static const Color bottomLineAuth = Color(0xFF272727);

  static const Color mainGrey = Color(0xFFF5F5F5);
  static const Color lightGray = Color(0xFFC1C1C1);
  static const Color grayE6 = Color(0xFFE6E6E6);
  static const Color gray19 = Color(0xFF191919);
  static const Color gray80 = Color(0xFF808080);
  static const Color grayDA = Color(0xFFDADADA);
  static const Color grey = Color(0xFFCBCBCB);
  static const Color rejected = Color(0xFFE93030);
  static const Color sent = Color(0xFFFFDA2D);

  static const Color red = Color(0xFFFF0000);
  static const Color green = Color(0xFF1AC386);
  static const screenBg = mainGrey;
  static const gold = Color(0xffD88A15);
  static const greyEmptyAvatar = Color(0xFFD7D7D7);
  static const Color cupertinoPicker = Color(0xFF292929);
  static const Color background = Color(0xFFF0F0F0);
  static const Color yellow = Color(0xFFF0D500);
  static const Color appBarBackground = mainGrey;
  static const Color cardFieldBackground = Color(0xFFF8F8F8);
  static const Color published = Color(0xFFC31AB2);
  static const Color notPublished = Color(0xFFBFBDC3);
  static const Color dates = Color(0xFF808080);
  static const Color divider = Color(0xFFD9D9D9);
  static const Color blue = Color(0xFF4086F4);


// OLD COLOR
  static const Color bgGradientOne = Color(0xFF090A0A);
  static const Color bgGradientTwo = Color(0xFF1B2125);

  static const Color navBarBG = Color(0xFF1F282D);
  static const Color grayIconMenu = Color(0xFF4B4C4F);
  static const Color transparent = Color(0x00000000);
  static const Color arrow = Color(0xFFD1D1D6);
  static const Color appBarLightBackground = Color(0xFFF4F4F6);
  static const Color appBarDarkBackground = Color(0xFF1F282D);
  static const Color secondaryText = Color(0xFF686A6C);
  static const Color bottomNavigationBarDarkBackground = Color(0xFF18191D);
  static const Color keyBackground = Color(0x4DFFFFFF);
  static const Color numPadBackground = Color(0x99000000);
  static const Color wrongPin = Color(0xFFFF3A30);
  static const Color alertDarkBackground = Color(0xFF35404B);
  static const Color alertDarkDivider = Color(0xFF000000);
  static const Color alertLightDivider = Color(0xFF30D343);
  static const Color digitPinDark = Color(0xFF222A31);
  static const Color digitPinLight = Color(0xFF979797);
  static const Color secondaryTransaction = Color(0xFF979797);
  static const Color walletContainerLightGradientOne = Color(0xFF389C8D);
  static const Color walletContainerLightGradientTwo = Color(0xFFA6DED1);
  static const Color walletContainerDarkGradientOne = Color(0xFF132C4C);
  static const Color walletContainerDarkGradientTwo = Color(0xFFA1D0F8);
  static const Color info = Color(0xFF637484);
  static const Color icons = Color(0xFF535768);
  static const Color arrowSent = Color(0xFF2D9CDB);
  static const Color popUpGradientOne = Color(0x3C132C4C);
  static const Color popUpGradientTwo = Color(0x2CA1D0F8);
  static const Color borderPopUp = Color(0x4CFFFFFF);
  static const Color chartGradOne = Color(0xFF4ACAA3);
  static const Color chartGradTwo = Color(0xFF327AE6);
  static const Color chartGradThree = Color(0xFF723AB9);
  static const Color feeHigh = Color(0xFFA9B956);
  static const Color feeMedium = Color(0xFFFFd33B);
  static const Color feeLow = Color(0xFFFFbB36);
  static const Color feeExtremeLow = Color(0xFFFF3A30);
  static const Color bronzeLevel = Color(0xFFCC5B49);
  static const Color bronzeEmptyLevel = Color(0xFFEDE9E5);
  static const Color silverEmptyLevel = Color(0xFFEDECE5);
  static const Color goldLevel = Color(0xFFDFA41B);
  static const Color goldEmptyLevel = Color(0xFFFEEEA8);
  static const Color sexButtonGrey = Color(0xFF787880);
  static const Color toggleGrey = Color(0xFFEEEEEE);
  static const Color mainOwnerText = Color(0xFF3B3F47);
}
