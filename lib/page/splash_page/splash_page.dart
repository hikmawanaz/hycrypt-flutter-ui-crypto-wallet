import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/app_logo.png",
              width: 130,
              height: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Heycript',
              style: GoogleFonts.autourOne(
                color: Colors.white,
                fontSize: 46,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Secure Way to Crypto',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
