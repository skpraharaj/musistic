import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppFont {
  const AppFont._();

  // Font Family
  static TextStyle headlineFont(TextStyle textStyle) {
    return GoogleFonts.roboto(
      textStyle: textStyle,
    );
  }

  static TextStyle bodyFont(TextStyle textStyle) {
    return GoogleFonts.roboto(
      textStyle: textStyle,
    );
  }

  static final TextStyle lightHeadline2 = headlineFont(
    TextStyle(
      fontSize: 34.0.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );

  static final TextStyle lightHeadline4 = headlineFont(
    TextStyle(
      fontSize: 30.0.sp,
      color: Colors.black,
    ),
  );

  // Headline5 Style
  static final TextStyle lightHeadline5 = headlineFont(
    TextStyle(
      fontSize: 22.0.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  );

  static final TextStyle lightHeadline6 = headlineFont(
    TextStyle(
      fontSize: 18.0.sp,
      // fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
  );

  // SubTitle1 Style
  static final TextStyle lightSubtitle1 = headlineFont(
    TextStyle(
      fontSize: 14.0.sp,
      // fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  );

  static final TextStyle lightSubtitle2 = headlineFont(
    TextStyle(
      fontSize: 12.0.sp,
      // fontSize: 16,
      color: Colors.black,
    ),
  );

  // BodyText1 Style
  static final TextStyle lightBodyText1 = bodyFont(
    TextStyle(
      fontSize: 12.0.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  );

  // BodyText2 Style
  static final TextStyle lightBodyText2 = bodyFont(
    TextStyle(
      fontSize: 11.0.sp,
      color: Colors.black,
    ),
  );

  // ButtonText Style
  static final TextStyle lightButtonText = bodyFont(
    TextStyle(
      fontSize: 11.0.sp,
      color: Colors.white,
    ),
  );

  static final TextStyle darkHeadline2 = AppFont.lightHeadline2.copyWith(
    color: const Color(0xFFF6F6F6),
  );

  static final TextStyle darkHeadline4 = AppFont.lightHeadline4.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkHeadline5 = AppFont.lightHeadline5.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkHeadline6 = AppFont.lightHeadline6.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkSubtitle1 = AppFont.lightSubtitle1.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkSubtitle2 = AppFont.lightSubtitle2.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkBodyText1 = AppFont.lightBodyText1.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkBodyText2 = AppFont.lightBodyText2.copyWith(
    color: Colors.white,
  );

  static final TextStyle darkButtonText = AppFont.lightBodyText2.copyWith(
    color: Colors.white,
  );
}
