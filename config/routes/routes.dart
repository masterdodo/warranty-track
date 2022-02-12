import 'package:flutter/material.dart';
import 'package:garancija_app/screens/general/warranty_list/warranty_list_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  /*'/login': (BuildContext context) => LoginScreen(),
  '/signup': (BuildContext context) => SignUpScreen(),*/
  '/warranties-list': (BuildContext context) => const WarrantyList(),
};
