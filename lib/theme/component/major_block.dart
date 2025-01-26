import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class MajorBlock extends StatelessWidget {
  final String major;
  final List<String> stacks;
  final int now;
  final int max;

  const MajorBlock({
    super.key,
    required this.major,
    required this.stacks,
    required this.now,
    required this.max
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 2,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: context.color.main5
            )
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  major,
                  style: TextStyle(
                    color: context.color.system3,
                    fontWeight: context.typo.semibold,
                    fontSize: 16,
                    height: 1
                  )
                ),
                const SizedBox(height: 2),
                Text(
                  stacks.join(', '),
                  style: TextStyle(
                    color: context.color.gray8,
                    fontWeight: context.typo.regular,
                    fontSize: 12,
                    height: 1
                  )
                )
              ]
            )
          ),
          const Spacer(),
          Text(
            '$now/$max',
            style: TextStyle(
              color: context.color.main5,
              fontWeight: context.typo.semibold,
              fontSize: 16,
              height: 1
            )
          )
        ]
      )
    );
  }
}
