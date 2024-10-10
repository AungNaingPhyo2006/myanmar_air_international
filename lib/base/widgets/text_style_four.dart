import 'package:flutter/material.dart';
import 'package:myanmar_air_international/base/res/styles/app_styles.dart';

class TextStyleFour extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFour(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
