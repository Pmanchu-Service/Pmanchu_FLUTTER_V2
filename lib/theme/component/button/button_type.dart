part of 'button.dart';

enum ButtonType {
  full,
  fullOutlined,
  standard,
  small,
  smallOutlined;

  Color getColor(BuildContext context) {
    switch (this) {
      case ButtonType.full:
      case ButtonType.small:
        return context.color.main2;
      case ButtonType.standard:
        return context.color.main3;
      default:
        return Colors.transparent;
    }
  }

  EdgeInsets getPadding(BuildContext context) {
    switch (this) {
      case ButtonType.full:
        return const EdgeInsets.symmetric(vertical: 20);
      case ButtonType.fullOutlined:
        return const EdgeInsets.symmetric(vertical: 14);
      case ButtonType.standard:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 10);
      default:
        return const EdgeInsets.symmetric(vertical: 6, horizontal: 9);
    }
  }

  Border? getBorder(BuildContext context) {
    switch (this) {
      case ButtonType.fullOutlined:
        return Border.all(
          color: context.color.main5
        );
      case ButtonType.smallOutlined:
        return Border.all(
          color: context.color.gray4
        );
      default:
        return null;
    }
  }

  BorderRadius getRadius(BuildContext context) {
    switch (this) {
      case ButtonType.full:
        return BorderRadius.circular(10);
      case ButtonType.fullOutlined:
        return BorderRadius.circular(7);
      case ButtonType.standard:
        return BorderRadius.circular(8);
      default:
        return BorderRadius.circular(5);
    }
  }

  TextStyle getTextStyle(BuildContext context) {
    switch (this) {
      case ButtonType.full:
        return TextStyle(
          color: context.color.system2,
          fontWeight: context.typo.semibold,
          fontSize: 18
        );
      case ButtonType.fullOutlined:
        return TextStyle(
          color: context.color.main5,
          fontWeight: context.typo.semibold,
          fontSize: 14
        );
      case ButtonType.standard:
      case ButtonType.small:
        return TextStyle(
          color: context.color.system2,
          fontWeight: context.typo.semibold,
          fontSize: 12
        );
      case ButtonType.smallOutlined:
        return TextStyle(
          color: context.color.gray4,
          fontWeight: context.typo.semibold,
          fontSize: 12
        );
    }
  }

  double? get width {
    switch (this) {
      case ButtonType.full:
      case ButtonType.fullOutlined:
        return double.infinity;
      default:
        return null;
    }
  }
}