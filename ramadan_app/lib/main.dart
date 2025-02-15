import 'package:flutter/material.dart';

import 'package:ramadan_app/feature/home/widgets/home_screen.dart';
import 'package:ramadan_app/theme/custom_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RamadanApp());
}

class RamadanApp extends StatelessWidget {
  const RamadanApp({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = const CustomColors();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        fontFamily: 'SolaimanLipi',
        colorScheme: const ColorScheme.light().copyWith(
          primary: customColors.blue100,
          onPrimary: customColors.black300,
          secondary: customColors.green200,
          onSecondary: customColors.black300,
          tertiary: customColors.blue100,
          onTertiary: customColors.blue100,
          surface: customColors.gray60,
          outline: customColors.blue100,
          onSurface: customColors.black300,
          onSurfaceVariant: customColors.black300,
          error: customColors.red100,
        ),
        extensions: <ThemeExtension<dynamic>>[
          customColors,
        ],
      ),
    );
  }
}