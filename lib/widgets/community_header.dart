import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';

import '../../controllers/community_controller/community_controller.dart';
import '../../gen/assets.gen.dart';

class CommunityHeader extends StatelessWidget {
  CommunityHeader({super.key});
  final CommunityController controller = Get.find<CommunityController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // Community Icon and Name
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(Assets.images.elmPark.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.blueColor,
                      backgroundImage: AssetImage(
                        Assets.images.badge.path,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Obx(
                  () => Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.community.value.name,
                        style: context.textTheme.titleSmall
                      ),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStatItem(
                            context,
                            controller.community.value.communityMembers
                                .toString(),
                            'Community\nMembers',
                            AppColors.primaryColor.withOpacity(0.6),
                          ),
                          _buildStatItem(
                            context,
                            controller.community.value.upcomingEvents
                                .toString(),
                            'Upcoming\nEvents',
                              AppColors.primaryColor.withOpacity(0.6),
                          ),
                          _buildStatItem(
                            context,
                            controller.community.value.currentlyCheckedIn
                                .toString(),
                            'Currently\nChecked In',
                              AppColors.primaryColor.withOpacity(0.6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String number, String label, Color color) {
    return Column(
      children: [
        Text(
          number,
          style: context.textTheme.headlineLarge?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            fontSize: 10,
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
