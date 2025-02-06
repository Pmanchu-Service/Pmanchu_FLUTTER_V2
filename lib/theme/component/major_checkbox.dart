import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class MajorCheckbox extends StatelessWidget {
  final String major;
  final bool checked;
  final ValueChanged<bool> onChanged;

  const MajorCheckbox({
    super.key,
    required this.major,
    required this.checked,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19,
      child: Row(
        children: [
          _LocalCheckbox(
            value: checked,
            onChanged: onChanged,
            activeColor: context.color.main3,
            checkColor: context.color.system2,
            borderColor: checked ? context.color.main3 : context.color.gray8
          ),
          Transform.translate(
            offset: const Offset(6, -1.8),
            child: Text(
              major,
              style: TextStyle(
                color: context.color.system3,
                fontWeight: context.typo.regular,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocalCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color checkColor;
  final Color borderColor;

  const _LocalCheckbox({
    required this.value,
    required this.onChanged,
    required this.activeColor,
    required this.checkColor,
    required this.borderColor
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: borderColor,
            width: 1.5
          ),
          color: value ? activeColor : Colors.transparent
        ),
        child: value ? Center(
          child: AssetIcon(context.theme.icons.check)
        ) : null
      )
    );
  }
}