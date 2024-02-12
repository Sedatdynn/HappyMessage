import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomTheme {
  ThemeData get appTheme => ThemeData(
        //colors
        focusColor: Colors.red,
        primaryColor: const Color(0xFFFFFFFF),
        primaryColorDark: const Color(0xFF000000),
        dividerColor: const Color(0xFFECEFF3),

        //textTheme
        textTheme: TextTheme(
          bodySmall: GoogleFonts.quicksand(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: const Color(0xFFFFFFFF),
          ),
          bodyMedium: GoogleFonts.quicksand(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: const Color(0xFFFFFFFF),
          ),
          bodyLarge: GoogleFonts.quicksand(
            color: const Color(0xFFFFFFFF),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelMedium: GoogleFonts.quicksand(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF36394A),
          ),
          titleSmall: GoogleFonts.quicksand(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFFFFFFF),
          ),
          headlineLarge: GoogleFonts.quicksand(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: const Color(0xFFFFFFFF),
          ),
          displayMedium: GoogleFonts.quicksand(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF36394A),
          ),
        ),
      );
}
