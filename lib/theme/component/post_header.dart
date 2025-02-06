import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class PostHeader extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onSettingPressed;
  const PostHeader({super.key, this.onSettingPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: Navigator.of(context).pop,
        icon: AssetIcon(context.theme.icons.back)
      ),
      actions: onSettingPressed == null
        ? null
        : [
          IconButton(
            onPressed: onSettingPressed,
            icon: AssetIcon(context.theme.icons.settings)
          )
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}
