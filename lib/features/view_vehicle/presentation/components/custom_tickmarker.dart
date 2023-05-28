import 'package:flutter/material.dart';

class CustomTickMarkShape extends SliderTickMarkShape {
  final double tickMarkRadius;
  final double tickMarkOffset;

  CustomTickMarkShape({
    required this.tickMarkRadius,
    required this.tickMarkOffset,
  });

  @override
  Size getPreferredSize(
      {required SliderThemeData sliderTheme, required bool isEnabled}) {
    return Size.fromRadius(tickMarkRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    required bool isEnabled,
    required TextDirection textDirection,
  }) {
    final Canvas canvas = context.canvas;

    final Paint tickPaint = Paint()
      ..color = sliderTheme.inactiveTickMarkColor!
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    final tickOffset = center + Offset(0, tickMarkOffset);

    canvas.drawLine(
      tickOffset,
      tickOffset + Offset(0, 10),
      tickPaint,
    );
  }
}
