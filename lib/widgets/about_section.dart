import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';
import '../constants/strings.dart';
import 'buttons/icon_buttons.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                about,
                style: context.textTheme.labelLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Row(
                spacing: 5,
                children: [
                  CustomIconButton(icon: Icons.wifi),
                  CustomIconButton(icon: Icons.link),
                  CustomIconButton(icon: Icons.email_outlined),
                ],
              ),
            ],
          ),
          Gap(10),
          Text(
            aboutDescription,
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.normal,

            ),
          ),
          Gap(8),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              showMore,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}