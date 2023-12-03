import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';

// ignore: must_be_immutable
class CommunityItem extends StatelessWidget {
  Color color;
  SvgPicture icon;
  String name;
  String people;
  CommunityItem({super.key, required this.color, required this.icon , required this.name, required this.people});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: ShapeDecoration(
        color: context.appColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
              color: color,
              shape: const OvalBorder(),
            ),
            child: Center(
              child: icon,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: context.appColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  people,
                  style: GoogleFonts.poppins(
                    color: context.appColors.textSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
