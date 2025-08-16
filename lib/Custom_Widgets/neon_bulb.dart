import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class NeonBlob extends StatelessWidget {
  final Color color;
  final double opacity;
  final double size;

  const NeonBlob({
    super.key,
    required this.color,
    required this.opacity,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 800),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color.withValues(alpha: opacity),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
