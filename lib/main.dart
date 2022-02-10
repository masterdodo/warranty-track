import 'package:flutter/material.dart';
import 'package:garancija_app/screens/general/warranty_list/warranty_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warranty Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const WarrantyList(title: 'Warrannties'),
    );
  }
}
