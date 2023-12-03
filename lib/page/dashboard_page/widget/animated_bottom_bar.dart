import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hycrypt/common/context_util.dart';
import 'package:hycrypt/gen/assets.gen.dart';

class AnimatedBottomBar extends StatelessWidget {
  final int currentIcon;
  final List<SvgGenImage> icons;
  final ValueChanged<int>? onTap;
    final List<String> labels;
  const AnimatedBottomBar({
    Key? key,
    required this.currentIcon,
    required this.onTap,
    required this.icons,
    required this.labels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: context.appColors.cardColor,
          borderRadius: BorderRadius.circular(48),
          boxShadow: [
            BoxShadow(
              color: context.appColors.primaryColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: icons
                .mapIndexed(
                  (index, icon) => GestureDetector(
                    onTap: () {
                      onTap?.call(index);
                    },
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 900),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          icon.svg(
                            color: currentIcon == index
                                ? context.appColors.primaryColor
                                : context.appColors.textSecondary,
                          ),
                          Text(
                            labels[index],
                            style: GoogleFonts.poppins(
                              color:  currentIcon == index
                                ? context.appColors.primaryColor
                                : context.appColors.textSecondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
