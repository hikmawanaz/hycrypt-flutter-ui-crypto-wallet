import 'package:flutter/material.dart';
import 'package:hycrypt/common/theme_util.dart';
import 'package:hycrypt/page/dashboard_page/dashboard_page.dart';

var appColorsDefault = AppColors.build();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.build().primaryColor),
        useMaterial3: true,
        
      ),
       themeMode: ThemeMode.dark, 
      home: const DashboardPage(),
    );
  }
}