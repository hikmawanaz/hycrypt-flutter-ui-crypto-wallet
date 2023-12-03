import 'package:flutter/material.dart';
import 'package:hycrypt/common/theme_util.dart';

extension BuildContextExt on BuildContext {
  AppColors get appColors => AppColors.build();
}