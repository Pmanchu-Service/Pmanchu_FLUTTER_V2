import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class ScheduleOverview extends StatelessWidget {
  final DateTime recruitmentStart;
  final DateTime recruitmentEnd;
  final DateTime projectStart;
  final DateTime projectEnd;

  const ScheduleOverview({
    super.key,
    required this.recruitmentStart,
    required this.recruitmentEnd,
    required this.projectStart,
    required this.projectEnd
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.color.main0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '모집 기간',
                style: TextStyle(
                  color: context.color.system3,
                  fontWeight: context.typo.bold,
                  fontSize: 14,
                  height: 1
                )
              ),
              const SizedBox(height: 10),
              Text(
                '프로젝트 기간',
                style: TextStyle(
                  color: context.color.system3,
                  fontWeight: context.typo.bold,
                  fontSize: 14,
                  height: 1
                )
              )
            ]
          ),
          Column(
            children: [
              Text(
                '${recruitmentStart.year}/${recruitmentStart.month}/${recruitmentStart.day} ~ ${recruitmentEnd.year}/${recruitmentEnd.month}/${recruitmentEnd.day}',
                style: TextStyle(
                  color: context.color.main5,
                  fontWeight: context.typo.semibold,
                  fontSize: 14,
                  height: 1
                )
              ),
              const SizedBox(height: 10),
              Text(
                '${projectStart.year}/${projectStart.month}/${projectStart.day} ~ ${projectEnd.year}/${projectEnd.month}/${projectEnd.day}',
                style: TextStyle(
                  color: context.color.main5,
                  fontWeight: context.typo.semibold,
                  fontSize: 14,
                  height: 1
                )
              )
            ]
          )
        ]
      )
    );
  }
}
