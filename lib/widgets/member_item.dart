import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/member_model/member_model.dart';

class MemberItem extends StatelessWidget {
  final Member member;

  const MemberItem({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(member.avatarUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(12),
          // Member details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                if (member.role.isNotEmpty && !member.isAdmin) ...[
                  SizedBox(height: 2),
                  Text(
                    member.role,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          // Arrow icon
          if (member.isAdmin) ...[
            Text(
              'Admin',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
          if(!member.isAdmin)
          Icon(
            Icons.chevron_right,
            color: Colors.grey[400],
            size: 20,
          ),
        ],
      ),
    );
  }
}