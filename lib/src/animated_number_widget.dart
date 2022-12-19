import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedNumber extends StatefulWidget {
  /// Desired start value.
  final num startValue;

  /// Desired end value
  final num endValue;

  /// Duration for the animation.
  final Duration duration;

  /// Flag that controls if the iteration of the animation will be integer or floating point.
  final bool isFloatingPoint;

  /// Desired decimal points.
  final int decimalPoint;

  /// Text style.
  final TextStyle? style;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  /// Desired prefix text.
  final String? prefixText;

  /// Desired sufix text.
  final String? sufixText;

  const AnimatedNumber({
    Key? key,
    required this.startValue,
    required this.endValue,
    required this.duration,
    required this.isFloatingPoint,
    this.decimalPoint = 2,
    this.style,
    this.textAlign,
    this.prefixText = '',
    this.sufixText = '',
  }) : super(key: key);

  @override
  State<AnimatedNumber> createState() => _AnimatedNumberState();
}

class _AnimatedNumberState extends State<AnimatedNumber>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this);

    if (widget.isFloatingPoint) {
      animation = Tween<double>(
              begin: widget.startValue.toDouble(),
              end: widget.endValue.toDouble())
          .animate(controller);
    } else {
      animation = IntTween(
              begin: widget.startValue.toInt(), end: widget.endValue.toInt())
          .animate(controller);
    }

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Text(
          '${widget.prefixText}${roundValue(animation.value, widget.decimalPoint)}${widget.sufixText}',
          style: widget.style,
          textAlign: widget.textAlign,
        );
      },
    );
  }

  String roundValue(num value, int decimalPoints) {
    if (value == value.toInt()) {
      return value.toString();
    }

    double doubleValue = value.toDouble();
    return doubleValue.toStringAsFixed(decimalPoints);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
