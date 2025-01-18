import 'package:flutter/material.dart';

import 'package:pmanchu_v2/service/theme_service.dart';

part 'button_type.dart';

class Button extends StatefulWidget {
  final ButtonType type;
  final String text;
  final bool enable;
  final VoidCallback onPressed;
  const Button({super.key, required this.type, required this.text, required this.onPressed, this.enable = true});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isPressed = false;

  Color get color => widget.type.getColor(context);
  EdgeInsets get padding => widget.type.getPadding(context);
  Border? get border => widget.type.getBorder(context);
  BorderRadius get radius => widget.type.getRadius(context);
  TextStyle get textStyle => widget.type.getTextStyle(context);
  double? get width => widget.type.width;

  void onPressed(bool newIsPressed) {
    if (isPressed == newIsPressed) return;
    setState(() {
      isPressed = newIsPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        onPressed(true);
        if (widget.enable) widget.onPressed();
      },
      onTapDown: (_)=>onPressed(false),
      onTapCancel: ()=>onPressed(false),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: widget.enable ? color : context.color.gray4,
          border: border,
          borderRadius: radius
        ),
        child: Center(
          child: Text(
            widget.text,
            style: textStyle
          ),
        )
      )
    );
  }
}
