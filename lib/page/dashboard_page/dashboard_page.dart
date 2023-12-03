import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';
import 'package:hycrypt/gen/assets.gen.dart';
import 'package:hycrypt/page/dashboard_page/widget/animated_bottom_bar.dart';
import 'package:hycrypt/page/dashboard_page/widget/community_item.dart';
import 'package:hycrypt/page/dashboard_page/widget/dashboard_header.dart';
import 'package:hycrypt/page/dashboard_page/widget/main_menu.dart';
import 'package:hycrypt/page/dashboard_page/widget/mywallet_item.dart';
import 'package:hycrypt/page/dashboard_page/widget/news_item.dart';
import 'package:hycrypt/page/dashboard_page/widget/portofolio_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardHeader(),
              const SizedBox(height: 24),
              Text(
                'My Wallets',
                style: GoogleFonts.poppins(
                  color: context.appColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const MyWalletItem(),
                    const SizedBox(width: 12),
                    Container(
                      width: 64,
                      height: 200,
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        color: context.appColors.cardColor,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: Color(0xFF8D8DA6)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Add New Card',
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF8D8DA6),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const MainMenu(),
              const SizedBox(height: 24),
              Text(
                'Best Portfolios',
                style: GoogleFonts.poppins(
                  color: context.appColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    PortfolioItem(
                      color: const Color(0xFFEF7E03),
                      balance: '\$25,490.69',
                      coinName: 'Bitcoin',
                      icon: Assets.svg.bitcoin.svg(),
                    ),
                    const SizedBox(width: 12),
                    PortfolioItem(
                      color: const Color(0xFF1E45D4),
                      balance: '\$25,490.69',
                      coinName: 'Ethereum',
                      icon: Assets.svg.ethereum.svg(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Community',
                style: GoogleFonts.poppins(
                  color: context.appColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 161,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CommunityItem(
                      color: const Color(0xFF7720E5),
                      icon: Assets.svg.crown.svg(),
                      name: 'Cuan Molo',
                      people: '11,839 people',
                    ),
                    const SizedBox(width: 12),
                    CommunityItem(
                      color: const Color(0xFF0A0932),
                      icon: Assets.svg.code.svg(),
                      name: 'Expert',
                      people: '11,839 people',
                    ),
                    const SizedBox(width: 12),
                    CommunityItem(
                      color: const Color(0xFF21C1E5),
                      icon: Assets.svg.layer.svg(color: Colors.white),
                      name: 'Newbie',
                      people: '11,839 people',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'News',
                style: GoogleFonts.poppins(
                  color: context.appColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    NewsItem(
                      title: 'Securing Money',
                      subtitle: 'Future',
                      imageUrl:
                          "https://images.unsplash.com/photo-1701347080826-9b9998692035?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    const SizedBox(height: 16),
                    NewsItem(
                      title: 'Great at Teamwork',
                      subtitle: 'Collaborative',
                      imageUrl:
                          "https://images.unsplash.com/photo-1701209786009-38946c926513?q=80&w=2046&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    const SizedBox(height: 16),
                    NewsItem(
                      title: 'How to Install Tracking...',
                      subtitle: 'Analytics',
                      imageUrl:
                          "https://images.unsplash.com/photo-1701485509508-58d495844f45?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedBottomBar(
        currentIcon: index,
        onTap: (int idx) {
          setState(() {
            index = idx;
            
          });
        },
        icons: [
          Assets.svg.layer,
          Assets.svg.messageText,
          Assets.svg.archiveTick,
          Assets.svg.setting2,
        ],
        labels: [
         'Browse',
         'Groups',
          'Wallet',
          'Settings',
        ],
      ),
    );
  }
}
