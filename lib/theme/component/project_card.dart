import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class ProjectCard extends StatelessWidget {
  final VoidCallback onPressed;
  final String thumbnail;
  final String name;
  final String owner;
  final String subject;
  final String description;
  final int heart;

  const ProjectCard({
    super.key,
    required this.onPressed,
    required this.thumbnail,
    required this.name,
    required this.owner,
    required this.subject,
    required this.description,
    required this.heart
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 9
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: context.color.system3,
                  width: 0.5
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  thumbnail,
                  width: 104,
                  height: 104,
                  fit: BoxFit.cover
                ),
                const SizedBox(width: 19),
                Transform.translate(
                  offset: const Offset(0, 2),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width - 204
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                          child: Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: context.color.system3,
                              fontWeight: context.typo.semibold,
                              fontSize: 15,
                              height: 1
                            )
                          )
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          height: 13,
                          child: Text(
                            owner,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: context.color.system3,
                              fontWeight: context.typo.regular,
                              fontSize: 9,
                              height: 1
                            )
                          )
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          height: 13,
                          child: Text(
                            subject,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: context.color.system3,
                              fontWeight: context.typo.regular,
                              fontSize: 11,
                              height: 1
                            )
                          )
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: context.color.system3,
                            fontWeight: context.typo.regular,
                            fontSize: 11,
                            height: 1
                          )
                        )
                      ]
                    )
                  )
                )
              ]
            )
          ),
          Positioned(
            right: 41,
            bottom: 19,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AssetIcon(
                  path: context.theme.icons.heart,
                  width: 8.75
                ),
                const SizedBox(width: 0.4),
                Text(
                  heart.toString(),
                  style: TextStyle(
                    color: context.color.system3,
                    fontWeight: context.typo.regular,
                    fontSize: 9,
                    height: 1.06
                  )
                )
              ]
            )
          )
        ]
      ),
    );
  }
}
