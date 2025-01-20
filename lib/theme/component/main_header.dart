import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBellPressed;
  const MainHeader({super.key, required this.onBellPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: AssetIcon(path: context.theme.icons.logoWithText, width: 95),
      ),
      leadingWidth: 95,
      actions: [
        IconButton(
          onPressed: onBellPressed,
          icon: AssetIcon(path: context.theme.icons.bell),
        )
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}
