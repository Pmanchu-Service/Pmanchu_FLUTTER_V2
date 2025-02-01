import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';

class NoticeCard extends StatelessWidget {
  final String type;
  final String image;
  final String title;
  final String content;

  const NoticeCard({
    super.key,
    required this.type,
    required this.image,
    required this.title,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 13, top: 12, bottom: 24),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.color.gray2,
            width: 0.7
          )
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: TextStyle(
              color: context.color.gray5,
              fontWeight: context.typo.regular,
              fontSize: 10,
              height: 1
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16.5,
                  backgroundImage: NetworkImage(image)
                ),
                const SizedBox(width: 9),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width-128),
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.color.system3,
                          fontWeight: context.typo.regular,
                          fontSize: 14,
                          height: 1
                        )
                      )
                    ),
                    const SizedBox(height: 4),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width-128),
                      child: Text(
                        content,
                        maxLines: 1,
                        style: TextStyle(
                          color: context.color.system3,
                          fontWeight: context.typo.regular,
                          fontSize: 10,
                          height: 1
                        )
                      )
                    )
                  ]
                )
              ]
            )
          )
        ]
      )
    );
  }
}
