import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';

import 'buttons/icon_buttons.dart';

class AboutSection extends StatelessWidget {
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
                'About',
                style: TextStyle(
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
            'Letting our leocals know when we are event going on including our weekly pub quiz and surprise live music might.',
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.normal,

            ),
          ),
          Gap(8),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Show more',
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