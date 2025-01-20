import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class MoveHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MoveHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: Navigator.of(context).pop,
        icon: AssetIcon(path: context.theme.icons.back)
      ),
      title: Text(
        title,
        style: TextStyle(
          color: context.color.system3,
          fontWeight: context.typo.semibold,
          fontSize: 18
        )
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}
