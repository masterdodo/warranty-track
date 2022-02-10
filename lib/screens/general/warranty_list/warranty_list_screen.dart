import 'package:flutter/material.dart';

class WarrantyList extends StatefulWidget {
  const WarrantyList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WarrantyList> createState() => _WarrantyListState();
}

class _WarrantyListState extends State<WarrantyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: const <Widget>[
            Text("Warranty 1"),
            Text("Warranty 2"),
            Text("Warranty 3"),
          ],
        ),
      ),
    );
  }
}
