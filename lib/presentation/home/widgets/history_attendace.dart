// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/assets/assets.dart';
import '../../../core/components/components.dart';
import '../../../core/constants/colors.dart';

class HistoryAttendance extends StatelessWidget {
  final String time;
  final String date;
  final String statusAbsen;
  final bool isAttendanceIn;
  const HistoryAttendance({
    super.key,
    required this.time,
    required this.date,
    required this.statusAbsen,
    this.isAttendanceIn = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isAttendanceIn ? AppColors.primary : AppColors.red,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Absensi $statusAbsen',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SpaceHeight(4.0),
          Row(
            children: [
              Assets.icons.location.svg(),
              const SpaceWidth(8.0),
              const Text(
                'Kantor',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              Text(
                date.substring(0, 10),
                style: const TextStyle(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
