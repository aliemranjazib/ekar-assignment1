import 'package:flutter/material.dart';

class CircleThumbShape extends SliderComponentShape {
  final double thumbRadius;

  const CircleThumbShape({
    this.thumbRadius = 5.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, thumbRadius, fillPaint);
    canvas.drawCircle(center, thumbRadius, borderPaint);
  }

  // @override
  // void paint(PaintingContext context, Offset center,
  //     {Animation<double> activationAnimation,
  //     Animation<double> enableAnimation,
  //     bool isDiscrete,
  //     TextPainter labelPainter,
  //     RenderBox parentBox,
  //     SliderThemeData sliderTheme,
  //     TextDirection textDirection,
  //     double value}) {
  //   final Canvas canvas = context.canvas;

  //   final fillPaint = Paint()
  //     ..color = Colors.white
  //     ..style = PaintingStyle.fill;

  //   final borderPaint = Paint()
  //     ..color = sliderTheme.thumbColor
  //     ..strokeWidth = 2
  //     ..style = PaintingStyle.stroke;

  //   canvas.drawCircle(center, thumbRadius, fillPaint);
  //   canvas.drawCircle(center, thumbRadius, borderPaint);
  // }
}
