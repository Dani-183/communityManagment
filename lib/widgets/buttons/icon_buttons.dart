
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? radius;
  final double? iconSize;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor, this.radius, this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:  radius ?? 15,
      backgroundColor: backgroundColor ?? AppColors.grey.withOpacity(0.1),
      child: Icon(
      icon,
      color: iconColor ?? AppColors.primaryColor.withOpacity(0.8),
        size: iconSize ?? 18,
    ),
    );
  }
}