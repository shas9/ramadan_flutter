import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomCircularTimer extends StatelessWidget {
  final String time;
  final String titleText;
  final double progress;
  final Color activeColor;
  final Color inactiveColor;
  final double strokeWidth;

  const CustomCircularTimer({
    super.key,
    required this.time,
    required this.titleText,
    required this.progress,
    required this.activeColor,
    required this.inactiveColor,
    this.strokeWidth = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircularTimerPainter(
        progress: progress,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        strokeWidth: strokeWidth,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Opacity(
            opacity: 0.7,
            child: Text(
              titleText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class CircularTimerPainter extends CustomPainter {
  final double progress;
  final Color activeColor;
  final Color inactiveColor;
  final double strokeWidth;

  CircularTimerPainter({
    required this.progress,
    required this.activeColor,
    required this.inactiveColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.width / 2);
    final radius = (size.width - strokeWidth) / 2;

    final startPoint = math.pi * 17 / 18;
    final endPoint = math.pi * 20 / 18;

    // Draw inactive arc
    final inactivePaint = Paint()
      ..color = inactiveColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startPoint, // Start from -60 degrees
      endPoint, // Draw 300 degrees
      false,
      inactivePaint,
    );

    // Draw active arc
    final activePaint = Paint()
      ..color = activeColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final sweepAngle = endPoint * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startPoint,
      sweepAngle,
      false,
      activePaint,
    );
  }

  @override
  bool shouldRepaint(CircularTimerPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.activeColor != activeColor ||
        oldDelegate.inactiveColor != inactiveColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}