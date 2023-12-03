/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/archive-tick.svg
  SvgGenImage get archiveTick =>
      const SvgGenImage('assets/svg/archive-tick.svg');

  /// File path: assets/svg/bitcoin.svg
  SvgGenImage get bitcoin => const SvgGenImage('assets/svg/bitcoin.svg');

  /// File path: assets/svg/code.svg
  SvgGenImage get code => const SvgGenImage('assets/svg/code.svg');

  /// File path: assets/svg/crown.svg
  SvgGenImage get crown => const SvgGenImage('assets/svg/crown.svg');

  /// File path: assets/svg/ethereum.svg
  SvgGenImage get ethereum => const SvgGenImage('assets/svg/ethereum.svg');

  /// File path: assets/svg/layer.svg
  SvgGenImage get layer => const SvgGenImage('assets/svg/layer.svg');

  /// File path: assets/svg/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/svg/menu.svg');

  /// File path: assets/svg/message-text.svg
  SvgGenImage get messageText =>
      const SvgGenImage('assets/svg/message-text.svg');

  /// File path: assets/svg/money-recive.svg
  SvgGenImage get moneyRecive =>
      const SvgGenImage('assets/svg/money-recive.svg');

  /// File path: assets/svg/money-send.svg
  SvgGenImage get moneySend => const SvgGenImage('assets/svg/money-send.svg');

  /// File path: assets/svg/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/svg/notification.svg');

  /// File path: assets/svg/setting-2.svg
  SvgGenImage get setting2 => const SvgGenImage('assets/svg/setting-2.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        archiveTick,
        bitcoin,
        code,
        crown,
        ethereum,
        layer,
        menu,
        messageText,
        moneyRecive,
        moneySend,
        notification,
        setting2
      ];
}

class Assets {
  Assets._();

  static const AssetGenImage appLogo = AssetGenImage('assets/app_logo.png');
  static const $AssetsSvgGen svg = $AssetsSvgGen();

  /// List of all assets
  List<AssetGenImage> get values => [appLogo];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
