import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class ProfileHeading extends StatelessWidget {
  final String text;
  const ProfileHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: context.color.main5,
            fontWeight: context.typo.bold,
            fontSize: 14,
            height: 1.214
          )
        ),
        Container(
          height: 10,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: context.color.gray3
              )
            )
          )
        )
      ]
    );
  }
}
