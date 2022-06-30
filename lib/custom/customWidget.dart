import 'package:flutter/material.dart';

void NavigatorPush({
  required BuildContext context,
  required var Page
}){
  Navigator.push(context, MaterialPageRoute(builder: (_)=>Page));
}
