import 'package:flutter/material.dart';
import 'package:ramadan_app/common/utility/app_icons.dart';
import 'package:ramadan_app/theme/custom_colors.dart';

class BaseScreen extends StatelessWidget {
  final Color? backgroundColor;
  final EdgeInsets padding;
  final Widget child;

  const BaseScreen({
    super.key,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(16.0),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      body: Container(
        color: backgroundColor ?? theme.cream,
        child: Stack(
          children: [
            Positioned(
              left: -150,
              top: -100,
              child: AppIcons.showIcon(
                AppIcons.home.sunImage,
                size: 300,
              ),
            ),
            Padding(
              padding: padding,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}