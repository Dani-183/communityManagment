import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';
import '../../controllers/community_controller/community_controller.dart';
import '../constants/strings.dart';
import '../widgets/event_item.dart';

class UpcomingEventsSection extends StatelessWidget {
  final CommunityController controller = Get.find<CommunityController>();

   UpcomingEventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 upcomingEvent,
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),
                ),
                Icon(
                  Icons.add,
                  size: 24,
                  color: AppColors.blueColor,
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.grey.withOpacity(0.2),
            thickness: 1,
          ),
          Obx(() {
            final events = controller.upcomingEvents;

            if (events.isEmpty) {
              return const SizedBox(); // or a fallback widget like Text("No upcoming events")
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(events.length * 2 - 1, (index) {
                if (index.isEven) {
                  final event = events[index ~/ 2];
                  return EventItem(event: event);
                } else {
                  return Divider(
                    color: AppColors.grey.withOpacity(0.2),
                    thickness: 1,
                  );
                }
              })..add(const Gap(10)),
            );
          }),

        ],
      ),
    );
  }
}