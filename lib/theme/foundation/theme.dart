import 'dart:ui';

import 'package:pmanchu_v2/theme/foundation/color.dart';
import 'package:pmanchu_v2/theme/foundation/icon.dart';
import 'package:pmanchu_v2/theme/foundation/typo.dart';

abstract class AppTheme {
  Brightness get brightness;
  Palette get color;
  AssetIcons get icons;
  Typo get typo;
}