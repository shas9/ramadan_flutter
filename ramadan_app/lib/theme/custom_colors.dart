import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color green200;
  final Color orange200;

  final Color sand;
  final Color cream;
  final Color sage;
  final Color wheat;
  final Color mint;

  final Color cyan50;
  final Color cyan100;
  final Color cyan200;

  final Color blue100;
  final Color blue200;
  final Color blue300;

  final Color black15;
  final Color black60;
  final Color black100;
  final Color black300;

  final Color white10;
  final Color white20;
  final Color white50;
  final Color white80;
  final Color white100;
  final Color white200;

  final Color gray10;
  final Color gray60;
  final Color gray80;
  final Color gray100;
  final Color gray200;

  final Color red100;

  const CustomColors({
    this.green200 = const Color(0xFF82C333),
    this.orange200 = const Color(0XFFE99836),
    this.sand = const Color(0xFFE3A53E),
    this.cream = const Color(0xFFF1EAD7),
    this.sage = const Color(0xFF5F7E78),
    this.wheat = const Color(0xFFD4BE83),
    this.mint = const Color(0xFFB8D6D0),
    this.cyan50 = const Color(0xFF90CDF4),
    this.cyan100 = const Color(0xFF009AE9),
    this.cyan200 = const Color(0xFF0070EB),
    this.blue100 = const Color(0xFF123365),
    this.blue200 = const Color(0xFF1F3558),
    this.blue300 = const Color(0xFF0C2954),
    this.black15 = const Color(0x2711243E),
    this.black60 = const Color(0x99202734),
    this.black100 = const Color(0xFF11243E),
    this.black300 = const Color(0xFF202734),
    this.white10 = const Color(0x19FFFFFF),
    this.white20 = const Color(0xFFF6F8FB),
    this.white50 = const Color(0x80FFFFFF),
    this.white80 = const Color(0xCCFFFFFF),
    this.white100 = const Color(0xFFFFFFFF),
    this.white200 = const Color(0xFFD3DBE3),
    this.gray10 = const Color(0xFF747E8F),
    this.gray60 = const Color(0xFFF6F7F8),
    this.gray80 = const Color(0xCC484C54),
    this.gray100 = const Color(0xFFECF1F6),
    this.gray200 = const Color(0xFF5E646F),
    this.red100 = const Color(0xFFD83329),
  });

  @override
  CustomColors copyWith({
    Color? green200,
    Color? orange200,
    Color? sand,
    Color? cream,
    Color? sage,
    Color? wheat,
    Color? mint,
    Color? cyan50,
    Color? cyan100,
    Color? cyan200,
    Color? blue100,
    Color? blue200,
    Color? blue300,
    Color? black15,
    Color? black60,
    Color? black100,
    Color? black300,
    Color? white10,
    Color? white20,
    Color? white50,
    Color? white80,
    Color? white100,
    Color? white200,
    Color? gray10,
    Color? gray60,
    Color? gray80,
    Color? gray100,
    Color? gray200,
    Color? red100,
  }) {
    return CustomColors(
      green200: green200 ?? this.green200,
      orange200: orange200 ?? this.orange200,
      sand: sand ?? this.sand,
      cream: cream ?? this.cream,
      sage: sage ?? this.sage,
      wheat: wheat ?? this.wheat,
      mint: mint ?? this.mint,
      cyan50: cyan50 ?? this.cyan50,
      cyan100: cyan100 ?? this.cyan100,
      cyan200: cyan200 ?? this.cyan200,
      blue100: blue100 ?? this.blue100,
      blue200: blue200 ?? this.blue200,
      blue300: blue300 ?? this.blue300,
      black15: black15 ?? this.black15,
      black60: black60 ?? this.black60,
      black100: black100 ?? this.black100,
      black300: black300 ?? this.black300,
      white10: white10 ?? this.white10,
      white20: white20 ?? this.white20,
      white50: white50 ?? this.white50,
      white80: white80 ?? this.white80,
      white100: white100 ?? this.white100,
      white200: white200 ?? this.white200,
      gray10: gray10 ?? this.gray10,
      gray60: gray60 ?? this.gray60,
      gray80: gray80 ?? this.gray80,
      gray100: gray100 ?? this.gray100,
      gray200: gray200 ?? this.gray200,
      red100: red100 ?? this.red100,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;

    return CustomColors(
      green200: Color.lerp(green200, other.green200, t)!,
      orange200: Color.lerp(orange200, other.orange200, t)!,
      sand: Color.lerp(sand, other.sand, t)!,
      cream: Color.lerp(cream, other.cream, t)!,
      sage: Color.lerp(sage, other.sage, t)!,
      wheat: Color.lerp(wheat, other.wheat, t)!,
      mint: Color.lerp(mint, other.mint, t)!,
      cyan50: Color.lerp(cyan50, other.cyan50, t)!,
      cyan100: Color.lerp(cyan100, other.cyan100, t)!,
      cyan200: Color.lerp(cyan200, other.cyan200, t)!,
      blue100: Color.lerp(blue100, other.blue100, t)!,
      blue200: Color.lerp(blue200, other.blue200, t)!,
      blue300: Color.lerp(blue300, other.blue300, t)!,
      black15: Color.lerp(black15, other.black15, t)!,
      black60: Color.lerp(black60, other.black60, t)!,
      black100: Color.lerp(black100, other.black100, t)!,
      black300: Color.lerp(black300, other.black300, t)!,
      white10: Color.lerp(white10, other.white10, t)!,
      white20: Color.lerp(white20, other.white20, t)!,
      white50: Color.lerp(white50, other.white50, t)!,
      white80: Color.lerp(white80, other.white80, t)!,
      white100: Color.lerp(white100, other.white100, t)!,
      white200: Color.lerp(white200, other.white200, t)!,
      gray10: Color.lerp(gray10, other.gray10, t)!,
      gray60: Color.lerp(gray60, other.gray60, t)!,
      gray80: Color.lerp(gray80, other.gray80, t)!,
      gray100: Color.lerp(gray100, other.gray100, t)!,
      gray200: Color.lerp(gray200, other.gray200, t)!,
      red100: Color.lerp(red100, other.red100, t)!,
    );
  }
}
