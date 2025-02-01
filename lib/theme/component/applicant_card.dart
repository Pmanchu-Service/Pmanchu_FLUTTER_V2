import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/component/button/button.dart';

class ApplicantCard extends StatelessWidget {
  final String profile;
  final String name;
  final List<String> majors;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  const ApplicantCard({super.key, required this.profile, required this.name, required this.majors, required this.onAccept, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.color.gray2,
            width: 0.7
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 16.5,
            backgroundImage: NetworkImage(profile)
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(
              color: context.color.system3,
              fontWeight: context.typo.regular,
              fontSize: 12
            )
          ),
          const SizedBox(width: 10),
          Text(
            majors.join('/'),
            style: TextStyle(
              color: context.color.system3,
              fontWeight: context.typo.regular,
              fontSize: 12
            )
          ),
          const Spacer(),
          SizedBox(
            height: 26,
            child: Button(
              type: ButtonType.small,
              text: '수락',
              onPressed: onAccept
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 27,
            child: Button(
              type: ButtonType.smallOutlined,
              text: '거절',
              onPressed: onReject
            ),
          ),
          const SizedBox(width: 5)
        ]
      )
    );
  }
}
