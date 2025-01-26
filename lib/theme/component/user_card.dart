import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class UserCard extends StatelessWidget {
  final String profile;
  final String name;
  final List<String> majors;

  const UserCard({super.key, required this.name, required this.profile, required this.majors});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 70,
        padding: const EdgeInsets.only(left: 13, top: 9, bottom: 9),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.color.gray2,
              width: 0.5
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(profile)
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: context.color.system3,
                    fontWeight: context.typo.regular,
                    fontSize: 14,
                    height: 1
                  )
                ),
                Text(
                  majors.join('/'),
                  style: TextStyle(
                    color: context.color.gray8,
                    fontWeight: context.typo.regular,
                    fontSize: 10,
                    height: 1
                  )
                )
              ]
            )
          ]
        )
      )
    );
  }
}
