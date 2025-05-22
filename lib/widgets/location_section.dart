import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/extension.dart';

import '../../gen/assets.gen.dart';
import 'buttons/icon_buttons.dart';

class LocationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.2),
            spreadRadius: 1,
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
                'Location',
                style: context.textTheme.labelLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                          image: AssetImage(Assets.images.what3word.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'what3words',
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(10),
          Text(
            'Club Location Name',
            style: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
          Gap(4),
          Text(
            'Battersea, London · ///feeds.flag.foods',
            style: context.textTheme.bodySmall?.copyWith(
              color: AppColors.grey.withOpacity(0.7),
            ),
          ),
          Gap(8),
          Container(
            width: context.screenWidth,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Text(
              'CHECKED-IN AT 14:43',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.grey.withOpacity(0.7),
                letterSpacing: 1,
              ),
            ),
          ),
          Gap(8),
          // Check-in section
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add a Check-in status',
                  style: context.textTheme.bodySmall,
                ),
                CustomIconButton(
                  icon: Icons.send,
                  backgroundColor: AppColors.primaryColor,
                  iconColor: AppColors.whiteColor,
                  radius: 12,
                  iconSize: 15,
                ),
              ],
            ),
          ),
          Gap(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Optional',
                  style: context.textTheme.bodySmall?.copyWith(fontSize: 10, color: AppColors.grey,),
                ),
                Text(
                  '0/30',
                  style: context.textTheme.bodySmall?.copyWith(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
