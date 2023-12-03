import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';

// ignore: must_be_immutable
class PortfolioItem extends StatelessWidget {
  Color color;
  String balance;
  String coinName;
  SvgPicture icon;
  PortfolioItem(
      {super.key,
      required this.color,
      required this.balance,
      required this.coinName,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 100,
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 30,
        bottom: 20,
      ),
      decoration: ShapeDecoration(
        color: context.appColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
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
              )),
          const SizedBox(width: 12),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  balance,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: context.appColors.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        coinName,
                        style: GoogleFonts.poppins(
                          color: context.appColors.textSecondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFF2929),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-12%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
