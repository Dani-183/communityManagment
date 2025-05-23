import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/strings.dart';

import '../../../controllers/community_controller/community_controller.dart';
import '../../../models/member_model/member_model.dart';


class AddMemberBottomSheet extends StatelessWidget {
  final CommunityController controller = Get.find<CommunityController>();

   AddMemberBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // Header
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  addUser,
                  style: context.textTheme.labelLarge?.copyWith(
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.close,
                    size: 24,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),


          // Available users list
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: Obx(() {
                final availableUsers = controller.getAvailableUsers();

                if (availableUsers.isEmpty) {
                  return Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.people_outline,
                          size: 48,
                          color: Colors.grey[400],
                        ),
                        Gap(16),
                        Text(
                          'No users available to add',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.grey.withOpacity(0.4)
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: availableUsers.length,
                  separatorBuilder: (context, index) => SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final user = availableUsers[index];
                    return _buildUserCard(user);
                  },
                );
              }),
            ),
          ),
          Gap(20),
        ],
      ),
    );
  }

  Widget _buildUserCard(Member user) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.grey.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(user.avatarUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12),
          // User details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  user.role,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          // Add button
          InkWell(
            onTap: () => controller.addMember(user),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}