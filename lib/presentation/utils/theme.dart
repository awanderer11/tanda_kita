import 'package:flutter/material.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';
import 'package:tanda_kita/presentation/utils/constant.dart';

class CustomTheme {
  ThemeData light() => ThemeData.light().copyWith(
        primaryColor: primaryColor,
        primaryColorLight: primaryColor,
        scaffoldBackgroundColor: backGroundColor,
        datePickerTheme: DatePickerThemeData(
          dayBackgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return primaryColor;
              }
              return backGroundColor;
            },
          ),
          backgroundColor: backGroundColor,
          confirmButtonStyle: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(primaryColor)),
          cancelButtonStyle: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(primaryColor),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          titleSpacing: 0,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        textTheme: const TextTheme().apply(
          bodyColor: ColorApp.black,
          displayColor: ColorApp.black,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          fillColor: Colors.white.withOpacity(0.9),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: Colors.black, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          outlineBorder: const BorderSide(color: Colors.white),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            circularTrackColor: Colors.white, color: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
            foregroundColor: WidgetStateProperty.all(Colors.white),
            backgroundColor: WidgetStateProperty.all(primaryColor),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
        ),
      );
  ThemeData dark() => ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        primaryColorDark: primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          titleSpacing: 0,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        textTheme: const TextTheme().apply(
          bodyColor: ColorApp.white,
          displayColor: ColorApp.white,
        ),
        datePickerTheme: DatePickerThemeData(
          dayBackgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return primaryColor;
              }
              return ColorApp.black;
            },
          ),
          backgroundColor: ColorApp.black,
          confirmButtonStyle: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(primaryColor)),
          cancelButtonStyle: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(primaryColor),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          fillColor: Colors.white.withOpacity(0.9),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          outlineBorder: const BorderSide(color: Colors.white),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            circularTrackColor: Colors.white, color: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
            foregroundColor: WidgetStateProperty.all(primaryColor),
            backgroundColor: WidgetStateProperty.all(Colors.white),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
        ),
      );
}
