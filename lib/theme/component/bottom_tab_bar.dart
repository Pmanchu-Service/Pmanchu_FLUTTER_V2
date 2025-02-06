import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class BottomTabBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const BottomTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected
  });

  @override
  Widget build(BuildContext context) {
    final icons = [
      context.theme.icons.home,
      context.theme.icons.userSearch,
      context.theme.icons.heartOutline,
      context.theme.icons.user
    ];
    final labels = ['홈', '유저 검색', '찜', '프로필'];

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: context.color.gray4, width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(icons.length, (index) {
          final isSelected = index == selectedIndex;
          final color = isSelected ? context.color.system3 : context.color.gray7;
          final space = (MediaQuery.sizeOf(context).width - 150) / 8;

          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => onTabSelected(index),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: space),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AssetIcon(
                    icons[index],
                    color: color,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    labels[index],
                    style: TextStyle(
                      color: color,
                      fontSize: 7,
                      fontWeight: context.typo.regular
                    )
                  )
                ]
              )
            )
          );
        })
      )
    );
  }
}
