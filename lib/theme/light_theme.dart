import 'dart:ui';

import 'package:pmanchu_v2/theme/foundation/color.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';
import 'package:pmanchu_v2/theme/foundation/theme.dart';
import 'package:pmanchu_v2/theme/foundation/typo.dart';

class LightTheme implements AppTheme {
  @override
  final Brightness brightness = Brightness.light;
  @override
  final Palette color = LightPalette();
  @override
  final AssetIcons icons = AssetIcons();
  @override
  final Typo typo = Pretendard();
}