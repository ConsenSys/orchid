import 'package:flutter/material.dart';
import 'package:orchid/pages/app_colors.dart';

class AppText {
  static TextStyle headerStyle = TextStyle(
    letterSpacing: 0.0,
    //height: 1.32,
    color: AppColors.text_header_purple,
    fontWeight: FontWeight.w500,
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontSize: 24.0,
  );

  static Text header(
      {text: String,
      textAlign: TextAlign.center,
      color: AppColors.text_header_purple,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 24.0}) {
    return Text(text,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            fontStyle: fontStyle,
            fontSize: fontSize));
  }

  static TextStyle bodyStyle = TextStyle(
      color: AppColors.neutral_2,
      letterSpacing: 0.0,
      height: 1.32,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);

  static TextStyle onboardingBodyStyle = bodyStyle.copyWith(
      letterSpacing: 0.25,
      // TODO: This is an approximation, the numbers in Zeplin would indicate 1.42 but
      // TODO: that appears way too large.
      height: 1.23);

  static TextStyle linkStyle = bodyStyle.copyWith(
      fontWeight: FontWeight.w700,
      color: AppColors.teal_3,
      decoration: TextDecoration.underline);

  static Text body(
      {text: "",
      textAlign: TextAlign.center,
      color: AppColors.neutral_2,
      letterSpacing: 0.0,
      lineHeight: 1.32,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 14.0}) {
    return Text(text,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            letterSpacing: letterSpacing,
            height: lineHeight,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            fontStyle: fontStyle,
            fontSize: fontSize));
  }

  static TextStyle textHintStyle = TextStyle(
      color: AppColors.neutral_1,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);

  static TextStyle textLabelStyle = TextStyle(
      color: AppColors.neutral_3,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);

  static TextStyle actionButtonStyle = TextStyle(
      color: AppColors.neutral_3,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 18.0);

  static TextStyle textEntryStyle = TextStyle(
      color: AppColors.grey_3,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);

  static TextStyle buttonStyle = TextStyle(
      color: AppColors.grey_7,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);

  static TextStyle dialogTitle = const TextStyle(
      color: const Color(0xff3a3149),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 20.0);

  static TextStyle listItem = const TextStyle(
      color: const Color(0xff3a3149),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 20.0);

  static TextStyle dialogBody = const TextStyle(
      color: const Color(0xff504960),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);

  static TextStyle dialogButton = const TextStyle(
      letterSpacing: 1.25,
      color: const Color(0xff5f45ba),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);

  static TextStyle noteStyle = const TextStyle(
      letterSpacing: 0.4,
      color: AppColors.purple_1,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 12.0);

  static TextStyle connectButtonMessageStyle = const TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 12.0);

  static TextStyle logStyle = const TextStyle(
      fontFamily: "Courier", fontSize: 16.0, color: AppColors.neutral_1);

  static TextStyle switchLabelStyle = const TextStyle(
      color: AppColors.neutral_1,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
      fontSize: 14.0);

  static TextStyle sideDrawerTitleStyle = const TextStyle(
      color: AppColors.grey_7,
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);
}
