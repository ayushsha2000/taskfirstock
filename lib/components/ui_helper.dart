// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

double mobileSize = 480;
double tabletSize = 767;
double largeTablet = 965;
double desktopSize = 1240;
double mediumDesktopSize = 1780;
double largeDesktopSize = 1780;

Widget horizontalSpaceExtraExtraTiny = SizedBox(width: 2.w);
Widget horizontalSpaceExtraTiny = SizedBox(width: 4.w);
Widget horizontalSpaceTiny = SizedBox(width: 8.w);
Widget horizontalSpaceSmall = SizedBox(width: 16.w);
Widget horizontalSpaceMedium = SizedBox(width: 24.w);
Widget horizontalSpaceLarge = SizedBox(width: 48.w);
Widget horizontalSpaceMassive = SizedBox(width: 72.w);

Widget verticalSpaceExtraExtraTiny = SizedBox(height: 2.0.h);
Widget verticalSpaceExtraTiny = SizedBox(height: 4.0.h);
Widget verticalSpaceTiny = SizedBox(height: 8.0.h);
Widget verticalSpaceSmall = SizedBox(height: 16.0.h);
Widget verticalSpaceMedium = SizedBox(height: 24.0.h);
Widget verticalSpaceMediumTwo = SizedBox(height: 32.0.h);
Widget verticalSpaceMediumThree = SizedBox(height: 40.0.h);
Widget verticalSpaceLarge = SizedBox(height: 48.0.h);
Widget verticalSpaceExtraLarge = SizedBox(height: 64.0.h);
Widget verticalSpaceMassive = SizedBox(height: 120.0.h);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 850;
bool isTabletNew(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1100 &&
    MediaQuery.of(context).size.width < 1200;
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1200;
bool isDesktopSummary(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1200&&
    MediaQuery.of(context).size.width <= 1300;
double screenHeightFraction(
  BuildContext context, {
  double dividedBy = 1,
  double offsetBy = 0,
}) =>
    (screenHeight(context) - offsetBy) / dividedBy;

double screenWidthFraction(
  BuildContext context, {
  double dividedBy = 1,
  double offsetBy = 0,
}) =>
    (screenWidth(context) - offsetBy) / dividedBy;

class ScreenSizes {
  final BoxConstraints constraints;
  ScreenSizes({required this.constraints});

  Size getScreenSize() {
    return constraints.biggest.width > 1200
        ? const Size(1600, 750)
        : constraints.biggest.width > 800 && constraints.biggest.width < 1200
            ? const Size(1366, 768)
            : const Size(428, 926);
  }
}
