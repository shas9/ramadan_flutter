import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AssetType { svg, png }

class AppIcons {
  // Base paths for SVG and PNG
  static const String _svgBasePath = 'assets/images/';

  // Icon categories
  static final splash = _SplashIcons();
  static final home = _Home();

  // Method to render SVG with onPressed functionality
  static Widget showIcon(
    String assetPath, {
    double size = 24.0,
    double? width,
    double? height,
    Color? color,
    VoidCallback? onPressed,
  }) {
    final assetType = getAssetType(assetPath);
    switch (assetType) {
      case AssetType.svg:
        return _svg(
          assetPath,
          width: width ?? size,
          height: height ?? size,
          color: color,
          onPressed: onPressed,
        );
      case AssetType.png:
        return _png(
          assetPath,
          width: width ?? size,
          height: height ?? size,
          onPressed: onPressed,
        );
    }
  }

  static Widget _svg(
    String assetPath, {
    double? width,
    double? height,
    Color? color,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: SvgPicture.asset(
        assetPath,
        width: width,
        height: height,
        colorFilter:
            color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }

  // Method to render PNG
  static Widget _png(
    String assetPath, {
    double? width,
    double? height,
    VoidCallback? onPressed,
    BoxFit fit = BoxFit.fill,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Image.asset(
        assetPath,
        width: width ?? 24,
        height: height ?? 24,
        fit: fit,
      ),
    );
  }

  static AssetType getAssetType(String assetPath) {
    if (assetPath.toLowerCase().contains('.svg')) return AssetType.svg;
    if (assetPath.toLowerCase().contains('.png')) return AssetType.png;
    throw ('Cannot detect asset type');
  }
}

class _SplashIcons {
  final String savanceLogo = '${AppIcons._svgBasePath}splash/savance_logo.png';
}

class _Home {
  final String sunImage = '${AppIcons._svgBasePath}home/sun.png';
  final String moonImage = '${AppIcons._svgBasePath}home/moon.png';
}
