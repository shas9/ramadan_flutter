import 'package:flutter/material.dart';
import 'package:ramadan_app/feature/common/widgets/base_screen.dart';
import 'package:ramadan_app/theme/custom_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>()!;
    return BaseScreen(
      title: 'রামাদান ২০২৫',
      child: Container(
        color: theme.cream,
      ),
    );
  }
}
