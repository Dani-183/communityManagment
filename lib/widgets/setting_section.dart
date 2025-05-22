
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../controllers/community_controller/community_controller.dart';
class SettingsSection extends StatelessWidget {
  final CommunityController controller = Get.find<CommunityController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Text(
              'Settings',
              style: context.textTheme.labelLarge?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          _buildSettingItem(
            icon: Icons.public,
            title: 'Public Community',
            trailing: Icon(
              Icons.info_outline,
              size: 16,
              color: Colors.grey[500],
            ),
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          _buildSettingItem(
            icon: Icons.favorite_outline,
            title: 'Favourite',
            trailing: SizedBox(
              height: 20,
              child: Row(
                children: [
                  Obx(() => Switch(
                    value: controller.isFavourite.value,
                    onChanged: (value) => controller.toggleFavourite(),
                    activeColor: AppColors.whiteColor,
                    activeTrackColor: AppColors.blueColor,
                    inactiveTrackColor: AppColors.grey,
                    inactiveThumbColor: AppColors.whiteColor,
                  ),),
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          _buildSettingItem(
            icon: Icons.add,
            title: 'Create Event',
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          _buildSettingItem(
            icon: Icons.edit,
            title: 'Edit Details',
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          _buildSettingItem(
            icon: Icons.delete_outline,
            title: 'Delete Community',
            titleColor: Colors.red,
            iconColor: Colors.red,
          ),
          Gap(10)
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    Widget? trailing,
    Color? titleColor,
    Color? iconColor,
  }) {
    return GestureDetector(
      onTap: () {
        // Setting item tap functionality
        if (title == 'Favourite') {
          controller.toggleFavourite();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: iconColor ?? Colors.black87,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: titleColor ?? Colors.black87,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }
}