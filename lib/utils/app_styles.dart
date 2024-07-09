import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

// abstract class AppStyles {
//   static TextStyle styleSimiBold24 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 24),
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff4eb7f2),
//   );
//   static TextStyle styleSimiBold20 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff064061),
//   );
//   static TextStyle styleMedium20 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Montserrat',
//     color: const Color(0xffFFFFFF),
//   );
//   static TextStyle styleSimiBold18 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 18),
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff4eb7f2),
//   );

//   static TextStyle styleRegular16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff064061),
//   );
//   static TextStyle styleMedium16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff064061),
//   );
//   static TextStyle styleSimiBold16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff4eb7f2),
//   );
//   static TextStyle styleBold16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff064061),
//   );
//   static TextStyle styleRegular14 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 14),
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Montserrat',
//     color: const Color(0xff064061),
//   );

//   static TextStyle styleRegular12 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 12),
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Montserrat',
//     color: const Color(0xffAAAAAA),
//   );
// }

// ScaleFactor with context
// Responsive Font Size
// (min, max) font Size

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.7;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 2000;
  }
}

// with no context
// double getResponsiveFontSize({required double fontSize}) {
//   double scaleFactor = getScaleFactor();
//   double responsiveFontSize = fontSize * scaleFactor;

//   double lowerLimit = fontSize * 0.8;
//   double upperLimit = fontSize * 1.2;
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor() {
//   var dispatcher = PlatformDispatcher.instance;
//   var physicalWidth = dispatcher.views.first.physicalSize.width;
//   var deviceRatio = dispatcher.views.first.devicePixelRatio;
//   double width = physicalWidth / deviceRatio;

//   if (width < SizeConfig.tablet) {
//     return width / 550;
//   } else if (width < SizeConfig.desktop) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }

abstract class AppStyles {
  static TextStyle styleSimiBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4eb7f2),
    );
  }

  static TextStyle styleSimiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSimiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4eb7f2),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSimiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4eb7f2),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }
}
