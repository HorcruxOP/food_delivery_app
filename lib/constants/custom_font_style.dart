import 'package:flutter/material.dart';

const String _fontFamilyText = "SFProText";
const String _fontFamilyRounded = "SFProRounded";

class CustomFontStyle {
  static TextStyle heavyText = const TextStyle(
    fontFamily: _fontFamilyText,
    fontWeight: FontWeight.w900,
  );
  static TextStyle semiBoldText = const TextStyle(
    fontFamily: _fontFamilyText,
    fontWeight: FontWeight.w600,
  );
  static TextStyle regularText = const TextStyle(
    fontFamily: _fontFamilyText,
    fontWeight: FontWeight.normal,
  );
  static TextStyle heavyRounded = const TextStyle(
    fontFamily: _fontFamilyRounded,
    fontWeight: FontWeight.w900,
  );
  static TextStyle semiBoldRounded = const TextStyle(
    fontFamily: _fontFamilyRounded,
    fontWeight: FontWeight.w600,
  );
  static TextStyle regularRounded = const TextStyle(
    fontFamily: _fontFamilyRounded,
    fontWeight: FontWeight.normal,
  );
  static TextStyle boldRounded = const TextStyle(
    fontFamily: _fontFamilyRounded,
    fontWeight: FontWeight.w700,
  );
}
