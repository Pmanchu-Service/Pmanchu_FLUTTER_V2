import 'dart:ui';

abstract class Typo {
  String get name;
  FontWeight get thin;
  FontWeight get extraLight;
  FontWeight get light;
  FontWeight get regular;
  FontWeight get medium;
  FontWeight get semibold;
  FontWeight get bold;
  FontWeight get extraBold;
  FontWeight get black;
}

class Pretendard implements Typo {
  @override
  String get name => 'Pretendard';
  @override
  FontWeight get thin => FontWeight.w100;
  @override
  FontWeight get extraLight => FontWeight.w200;
  @override
  FontWeight get light => FontWeight.w300;
  @override
  FontWeight get regular => FontWeight.w400;
  @override
  FontWeight get medium => FontWeight.w500;
  @override
  FontWeight get semibold => FontWeight.w600;
  @override
  FontWeight get bold => FontWeight.w700;
  @override
  FontWeight get extraBold => FontWeight.w800;
  @override
  FontWeight get black => FontWeight.w900;
}