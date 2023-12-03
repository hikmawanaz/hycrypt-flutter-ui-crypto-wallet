import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: const Color(0xFF0300A2),
    useMaterial3: true,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFF0300A2),
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}

class AppColors {
  Color primaryColor;
  Color secondaryColor;
  Color accentColor;
  Color backgroundColor;
  Color cardColor;
  Color buttonColor;
  Color textPrimary;
  Color textSecondary;

  AppColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.accentColor,
    required this.backgroundColor,
    required this.cardColor,
    required this.buttonColor,
    required this.textPrimary,
    required this.textSecondary,
  });

  factory AppColors.build() {
    try {
      if (getDeviceBrightness == Brightness.light) {
        return AppColors.light();
      } else {
        return AppColors.dark();
      }
    } catch (_) {
      return AppColors.light();
    }
  }

  factory AppColors.light() => AppColors(
        primaryColor: const Color(0xFF0300A2),
        secondaryColor: const Color(0xFFEEEEFF),
        accentColor: const Color(0xFF8D8DA6),
        backgroundColor: const Color(0xFFF8F8F8),
        cardColor: const Color(0xFFFFFFFF),
        buttonColor: const Color(0xFF0300A2),
        textPrimary: const Color(0xFF060527),
        textSecondary: const Color(0xFF8D8DA6),
      );

  factory AppColors.dark() => AppColors(
        primaryColor: const Color(0xFF6562FF),
        secondaryColor: const Color(0xFFEEEEFF),
        accentColor: const Color(0xFF8D8DA6),
        backgroundColor: const Color(0xFF010321),
        cardColor: const Color(0xFF1C1E35),
        buttonColor: const Color(0xFF0300A2),
        textPrimary: const Color(0xFFC0C0C9),
        textSecondary: const Color(0xFF8D8DA6),
      );

  static Brightness get getDeviceBrightness {
    try {
      return SchedulerBinding.instance.window.platformBrightness;
    } catch (_) {
      return Brightness.light;
    }
  }
}
