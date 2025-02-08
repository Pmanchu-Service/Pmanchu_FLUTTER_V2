import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _root = 'assets/icons';

class AssetIcons {
  String get back => '$_root/back.svg';
  String get bell => '$_root/bell.svg';
  String get camera => '$_root/camera.svg';
  String get cancel => '$_root/cancel.svg';
  String get check => '$_root/check.svg';
  String get down => '$_root/down.svg';
  String get edit => '$_root/edit.svg';
  String get github => '$_root/github.svg';
  String get heart => '$_root/heart.svg';
  String get heartOutline => '$_root/heart_outline.svg';
  String get home => '$_root/home.svg';
  String get link => '$_root/link.svg';
  String get logo => '$_root/logo.svg';
  String get logoWithText => '$_root/logo_with_text.png';
  String get plus => '$_root/plus.svg';
  String get required => '$_root/required.svg';
  String get settings => '$_root/settings.svg';
  String get settingsLine => '$_root/settings_line.svg';
  String get user => '$_root/user.svg';
  String get search => '$_root/search.svg';
  String get userSearch => '$_root/user_search.svg';
}

class AssetIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double? width;
  const AssetIcon(this.path, {super.key, this.color, this.width});

  @override
  Widget build(BuildContext context) {
    if (path.endsWith('.png')) {
      return Image.asset(path, fit: BoxFit.contain, width: width);
    }
    return SvgPicture.asset(
      path,
      colorFilter: color == null
        ? null
        : ColorFilter.mode(color!, BlendMode.srcIn),
      semanticsLabel: path.split('/').last.split('.').first,
      width: width
    );
  }
}
