// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/app_logo.png');

  /// File path: assets/images/auth_background.png
  AssetGenImage get authBackground =>
      const AssetGenImage('assets/images/auth_background.png');

  /// File path: assets/images/empty_data.svg
  String get emptyData => 'assets/images/empty_data.svg';

  /// File path: assets/images/im_empty_screen.png
  AssetGenImage get imEmptyScreen =>
      const AssetGenImage('assets/images/im_empty_screen.png');

  /// File path: assets/images/im_empty_search_result.png
  AssetGenImage get imEmptySearchResult =>
      const AssetGenImage('assets/images/im_empty_search_result.png');

  /// File path: assets/images/im_error_screen.png
  AssetGenImage get imErrorScreen =>
      const AssetGenImage('assets/images/im_error_screen.png');

  /// File path: assets/images/splash_back_im.png
  AssetGenImage get splashBackIm =>
      const AssetGenImage('assets/images/splash_back_im.png');

  /// List of all assets
  List<dynamic> get values => [
    appLogo,
    authBackground,
    emptyData,
    imEmptyScreen,
    imEmptySearchResult,
    imErrorScreen,
    splashBackIm,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/circle-loader.json
  String get circleLoader => 'assets/lottie/circle-loader.json';

  /// File path: assets/lottie/ic_loading_primary.json
  String get icLoadingPrimary => 'assets/lottie/ic_loading_primary.json';

  /// File path: assets/lottie/ic_loading_white.json
  String get icLoadingWhite => 'assets/lottie/ic_loading_white.json';

  /// File path: assets/lottie/ic_success_white.json
  String get icSuccessWhite => 'assets/lottie/ic_success_white.json';

  /// File path: assets/lottie/splash.json
  String get splash => 'assets/lottie/splash.json';

  /// List of all assets
  List<String> get values => [
    circleLoader,
    icLoadingPrimary,
    icLoadingWhite,
    icSuccessWhite,
    splash,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar.json
  String get ar => 'assets/translations/ar.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [ar, en];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
