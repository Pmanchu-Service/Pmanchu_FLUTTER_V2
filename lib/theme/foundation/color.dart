import 'dart:ui';

abstract class Palette {
  Color get main0 => const Color(0xFFFFF4D9);
  Color get main1 => const Color(0xFFFFD97F);
  Color get main2 => const Color(0xFFFFCB53);
  Color get main3 => const Color(0xFFFFBD22);
  Color get main4 => const Color(0xFFFFB300);
  Color get main5 => const Color(0xFFFAA600);

  Color get system1 => const Color(0xFFF9291C);
  Color get system2 => const Color(0xFFFFFFFF);
  Color get system3 => const Color(0xFF2F2F2F);

  Color get gray1 => const Color(0xFFF9F9F9);
  Color get gray2 => const Color(0xFFD1D1D1);
  Color get gray3 => const Color(0xFFCCCCCC);
  Color get gray4 => const Color(0xFFB9B9B9);
  Color get gray5 => const Color(0xFFAAAAAA);
  Color get gray6 => const Color(0xFF9E9E9E);
  Color get gray7 => const Color(0xFF959595);
  Color get gray8 => const Color(0xFF8B8B8B);
}

class LightPalette extends Palette {
  @override
  Color get main0 => const Color(0xFFFFF4D9);
  @override
  Color get main1 => const Color(0xFFFFD97F);
  @override
  Color get main2 => const Color(0xFFFFCB53);
  @override
  Color get main3 => const Color(0xFFFFBD22);
  @override
  Color get main4 => const Color(0xFFFFB300);
  @override
  Color get main5 => const Color(0xFFFAA600);

  @override
  Color get system1 => const Color(0xFFF9291C);
  @override
  Color get system2 => const Color(0xFFFFFFFF);
  @override
  Color get system3 => const Color(0xFF2F2F2F);

  @override
  Color get gray1 => const Color(0xFFF9F9F9);
  @override
  Color get gray2 => const Color(0xFFD1D1D1);
  @override
  Color get gray3 => const Color(0xFFCCCCCC);
  @override
  Color get gray4 => const Color(0xFFB9B9B9);
  @override
  Color get gray5 => const Color(0xFFAAAAAA);
  @override
  Color get gray6 => const Color(0xFF9E9E9E);
  @override
  Color get gray7 => const Color(0xFF959595);
  @override
  Color get gray8 => const Color(0xFF8B8B8B);
}