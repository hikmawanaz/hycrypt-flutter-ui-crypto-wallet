import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';
import 'package:hycrypt/gen/assets.gen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      decoration: ShapeDecoration(
        color: context.appColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFEEEEFF),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: Assets.svg.moneyRecive.svg(),
                      )),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Receive',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: context.appColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFEEEEFF),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: Assets.svg.moneySend.svg(),
                      )),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Send',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: context.appColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFEEEEFF),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: Assets.svg.menu.svg(),
                      )),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'More',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: context.appColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
