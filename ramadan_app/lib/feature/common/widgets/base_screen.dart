import 'package:flutter/material.dart';
import 'package:ramadan_app/theme/custom_colors.dart';

class BaseScreen extends StatelessWidget {
  final String? title;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final Widget child;

  const BaseScreen({
    super.key,
    this.title,
    this.appBar,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(16.0),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      appBar: appBar ?? _buildDefaultAppBar(context, theme),
      body: Container(
        color: backgroundColor ?? theme.cream,
        height: double.infinity,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }

  PreferredSizeWidget? _buildDefaultAppBar(BuildContext context, CustomColors theme) {
    if (title == null) return null;
    
    return AppBar(
      backgroundColor: theme.sage,
      title: Text(
        title!,
        style: TextStyle(
          color: theme.cream,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      centerTitle: true,
    );
  }
}