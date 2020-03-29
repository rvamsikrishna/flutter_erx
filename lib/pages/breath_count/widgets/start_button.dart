import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StartButton extends HookWidget {
  final double size;
  final int duration;
  final Function onPressed;
  final Widget child;

  StartButton({
    this.size = 100.0,
    this.duration = 60,
    this.onPressed,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    final _animationController = useAnimationController(
      duration: Duration(seconds: duration),
      lowerBound: 0.0,
      upperBound: 2 * pi,
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
      }
    });

    return Container(
      width: size,
      height: size,
      child: InkWell(
        borderRadius: BorderRadius.circular(size),
        onTap: () {
          onPressed();
          if (_animationController.isAnimating) {
            _animationController.reverseDuration = Duration(milliseconds: 300);
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
        },
        child: CustomPaint(
          painter: RadialPainter(animation: _animationController),
          child: Align(
            alignment: Alignment.center,
            child: child ?? Container(),
          ),
        ),
      ),
    );
  }
}

class RadialPainter extends CustomPainter {
  final Animation<double> animation;

  RadialPainter({this.animation}) : super(repaint: animation);
  @override
  void paint(Canvas canvas, Size size) {
    Paint borderPaint = _getBorderPaint(Colors.grey);

    Paint radialBorder = _getBorderPaint(Colors.greenAccent);
    canvas.drawArc(
      Offset.zero & size,
      pi,
      2 * pi,
      false,
      borderPaint,
    );
    canvas.drawArc(
      Offset.zero & size,
      -pi / 2,
      animation.value,
      false,
      radialBorder,
    );
  }

  Paint _getBorderPaint(Color color) {
    Paint borderPaint = Paint()
      ..color = color
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;
    return borderPaint;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
