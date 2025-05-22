import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';


class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.whiteColor,
      useMaterial3: true, // Removing any custom font
      colorScheme: ColorScheme.fromSeed(seedColor:AppColors.primaryColor),
      appBarTheme:  AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,

        elevation: 2,
        titleTextStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(color: AppColors.whiteColor,),
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 26,
          fontWeight: FontWeight.w800,
        ),
        titleMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
        bodyLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 12,
        ),
        labelLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        displayLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
