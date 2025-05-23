import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';
import '../../controllers/community_controller/community_controller.dart';
import '../../widgets/about_section.dart';
import '../../widgets/community_header.dart';
import '../../widgets/location_section.dart';
import '../../widgets/member_section.dart';
import '../../widgets/setting_section.dart';
import '../../widgets/upcoming_event_section.dart';


class CommunityScreen extends StatelessWidget {
  final CommunityController controller = Get.find<CommunityController>();

   CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeader(),
                    AboutSection(),
                    UpcomingEventsSection(),
                    LocationSection(),
                    MembersSection(),
                    SettingsSection(),
                    Gap(20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.arrow_back, size: 24, color: Colors.black87),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.file_upload_outlined,
              size: 24,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
