import 'package:flutter/material.dart';
import 'package:garancija_app/screens/general/warranty_list/components/warranty_item.dart';

class WarrantyList extends StatefulWidget {
  const WarrantyList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WarrantyList> createState() => _WarrantyListState();
}

class _WarrantyListState extends State<WarrantyList> {
  final List warranties = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <WarrantyItem>[
            ...warranties.map((warranty) => WarrantyItem(itemId: warranty)),
          ],
        ),
      ),
    );
  }
}
