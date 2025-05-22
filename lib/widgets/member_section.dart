import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../controllers/community_controller/community_controller.dart';
import '../widgets/member_item.dart';
import 'bottom_sheet/add_member_bottom_sheet.dart';

class MembersSection extends StatelessWidget {
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
          Gap(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Members',
                  style: context.textTheme.labelLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                InkWell(
                  onTap: (){
                    _showAddMemberBottomSheet(context);
                  },
                  child: Icon(
                    Icons.add,
                    color: AppColors.blueColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.1),
            thickness: 1,
          ),
          Obx(() {
            final members = controller.members;

            if (members.isEmpty) {
              return const SizedBox(); // or a fallback widget like Text("No upcoming events")
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(members.length * 2 , (index) {
                if (index.isEven) {
                  final member = members[index ~/ 2];
                  return MemberItem(member: member);
                } else {
                  return Divider(
                    color: AppColors.grey.withOpacity(0.2),
                    thickness: 1,
                  );
                }
              }),
            );
          }),
          Gap(4),
          Center(
            child: Text(
              'View 5 More',
              style: context.textTheme.labelMedium,
            ),
          ),
          Gap(8)
        ],
      ),
    );
  }

  void _showAddMemberBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddMemberBottomSheet(),
    );
  }
}