
import 'dart:io';
import 'package:flutter/material.dart';


// Colors
const mainWhite = Color(0xFFFFFFFF);
const mainBackground =  Color(0xFFF1EFE5);
const mainFontDark = Color(0xFFF1EFE5);
const subGray = Color(0xFFFAFAFB);
const downDark = Color(0x66000000);
const lineGray = Color(0x1A000000);

//Text StyleSheet
var kAppBarTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: mainFontDark,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kTitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: mainFontDark,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);


var kTitle2Style = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: mainFontDark,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kTitle3Style = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: mainFontDark,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kContentStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: downDark,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kContentSubStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: subGray,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kSearchHintStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: subGray,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

