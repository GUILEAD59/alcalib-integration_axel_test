import 'dart:ui';

import 'package:flutter/cupertino.dart';

//Source of assets
String imgSource = "assets/images";
//Primary Color for the app
final primaryColor = Color.fromRGBO(120, 4, 198, 1);
sizeW({
 required BuildContext context,
}) => MediaQuery.of(context).size.width;
sizeH({
 required BuildContext context,
}) => MediaQuery.of(context).size.height;