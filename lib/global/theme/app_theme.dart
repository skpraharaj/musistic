import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:musistic/global/styles/app_color.dart';
import 'package:musistic/global/styles/app_font.dart';
import 'package:musistic/global/styles/icon_style.dart';

class AppTheme {
  const AppTheme._();

  static Brightness? get currentSystemBrightness =>
      SchedulerBinding.instance?.window.platformBrightness;

  /* -----------------------Light Text Theme----------------------- */
  static final lightTextTheme = TextTheme(
    button: AppFont.lightButtonText,
    headline2: AppFont.lightHeadline2,
    headline4: AppFont.lightHeadline4,
    headline5: AppFont.lightHeadline5,
    headline6: AppFont.lightHeadline6,
    subtitle1: AppFont.lightSubtitle1,
    subtitle2: AppFont.lightSubtitle2,
    bodyText1: AppFont.lightBodyText1,
    bodyText2: AppFont.lightBodyText2,
  );

  /* -------------------------Dark Text Theme---------------------- */
  static final darkTextTheme = TextTheme(
    button: AppFont.darkButtonText,
    headline2: AppFont.darkHeadline2,
    headline4: AppFont.darkHeadline4,
    headline5: AppFont.darkHeadline5,
    headline6: AppFont.darkHeadline6,
    subtitle1: AppFont.darkSubtitle1,
    subtitle2: AppFont.darkSubtitle2,
    bodyText1: AppFont.darkBodyText1,
    bodyText2: AppFont.darkBodyText2,
  );

  /* -----------------------Page Transition----------------------- */
  static const PageTransitionsTheme lightThemePageTransition =
      PageTransitionsTheme(
    builders: {
      TargetPlatform.android: SharedAxisPageTransitionsBuilder(
        fillColor: AppColor.lightBackgroundColor,
        transitionType: SharedAxisTransitionType.scaled,
      ),
    },
  );

  static const PageTransitionsTheme darkThemePageTransition =
      PageTransitionsTheme(
    builders: {
      TargetPlatform.android: SharedAxisPageTransitionsBuilder(
        fillColor: AppColor.darkBackgroundColor,
        transitionType: SharedAxisTransitionType.scaled,
      ),
    },
  );
  /* ------------------------Page Transition---------------------- */

  /* --------------------------Theme Data-------------------------- */
  static final lightTheme = ThemeData(
    textTheme: lightTextTheme,
    iconTheme: IconStyle.lightIconTheme,
    brightness: Brightness.light,
    accentColor: AppColor.lightAccentColor,
    primaryColor: AppColor.lightPrimaryColor,
    backgroundColor: AppColor.lightBackgroundColor,
    pageTransitionsTheme: lightThemePageTransition,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColor.lightBackgroundColor,
  );

  static final darkTheme = ThemeData(
    textTheme: darkTextTheme,
    iconTheme: IconStyle.darkIconTheme,
    brightness: Brightness.dark,
    accentColor: AppColor.darkAccentColor,
    primaryColor: AppColor.darkPrimaryColor,
    backgroundColor: AppColor.darkBackgroundColor,
    pageTransitionsTheme: darkThemePageTransition,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColor.darkBackgroundColor,
  );

  static setStatusBarAndNavigationBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColor.darkBackgroundColor,
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
