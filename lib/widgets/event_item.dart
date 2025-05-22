import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/constants/colors.dart';
import '../../models/event_model/event_model.dart';
class EventItem extends StatelessWidget {
  final Event event;

  const EventItem({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              // Date container
              Container(
                width: 50,
                child: Column(
                  children: [
                    Text(
                      event.date,
                      style: context.textTheme.labelLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      event.month,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: AppColors.grey.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              // Event details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.title,
                      style: context.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      '${event.time} · ${event.location}',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColors.grey.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              // Arrow icon
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}