import 'package:flutter/material.dart';
import 'package:pmanchu_v2/service/theme_service.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';

class Input extends StatelessWidget {
  final void Function(String) onChanged;
  final double verticalPadding;
  final double radius;
  final String? placeholder;
  final Widget? leading;
  const Input({super.key, required this.onChanged, this.placeholder, this.leading, this.verticalPadding = 14, this.radius = 8});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.color.gray1;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(
        color: context.color.gray2,
        width: 1
      )
    );
    return TextField(
      onChanged: onChanged,
      cursorHeight: 17,
      style: TextStyle(
        color: context.color.system3,
        fontWeight: context.typo.regular,
        fontSize: 14
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        hoverColor: backgroundColor,
        focusColor: backgroundColor,
        border: border,
        focusedBorder: border,
        enabledBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
        disabledBorder: border,
        labelText: placeholder,
        labelStyle: TextStyle(
          color: context.color.gray5,
          fontWeight: context.typo.regular,
          fontSize: 14
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: leading,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 24
        ),
        contentPadding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 12),
        hintStyle: TextStyle(
          color: context.color.gray5,
          fontWeight: context.typo.regular,
          fontSize: 14
        )
      )
    );
  }

  static Widget label(String text, {bool required = false}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Builder(
            builder: (context) {
              return Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: context.color.system3,
                      fontWeight: context.typo.regular,
                      fontSize: 14
                    )
                  ),
                  if (required) Transform.translate(
                    offset: const Offset(1, -2.7),
                    child: AssetIcon(
                      path: context.theme.icons.required
                    )
                  )
                ]
              );
            }
          ),
          const SizedBox(height: 5)
        ]
      )
    );
  }
}
