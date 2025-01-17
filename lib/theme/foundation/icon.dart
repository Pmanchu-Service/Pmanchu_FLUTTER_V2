import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _root = 'assets/icons';

class AssetIcons {
  static String get back => '$_root/back.svg';
  static String get bell => '$_root/bell.svg';
  static String get camera => '$_root/camera.svg';
  static String get cancel => '$_root/cancel.svg';
  static String get check => '$_root/check.svg';
  static String get down => '$_root/down.svg';
  static String get edit => '$_root/edit.svg';
  static String get heart => '$_root/heart.svg';
  static String get heartOutline => '$_root/heart_outline.svg';
  static String get home => '$_root/home.svg';
  static String get link => '$_root/link.svg';
  static String get logo => '$_root/logo.svg';
  static String get logoWithText => '$_root/logo_with_text.svg';
  static String get plus => '$_root/plus.svg';
  static String get required => '$_root/required.svg';
  static String get settings => '$_root/settings.svg';
  static String get settingsLine => '$_root/settings_line.svg';
  static String get user => '$_root/user.svg';
  static String get userSearch => '$_root/user_search.svg';
}

class AssetIcon extends StatelessWidget {
  final String path;
  final Color? color;
  const AssetIcon({super.key, required this.path, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color == null
        ? null
        : ColorFilter.mode(color!, BlendMode.srcIn),
      semanticsLabel: path.split('/').last.split('.').first
    );
  }
}
