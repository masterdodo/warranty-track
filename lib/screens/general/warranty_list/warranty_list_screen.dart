import 'package:flutter/material.dart';
import 'package:garancija_app/screens/general/warranty_list/components/add_warranty_item.dart';
import 'package:garancija_app/screens/general/warranty_list/components/warranty_item.dart';

class WarrantyList extends StatefulWidget {
  const WarrantyList({Key? key}) : super(key: key);

  static const String title = "Warrannties";

  @override
  State<WarrantyList> createState() => _WarrantyListState();
}

class _WarrantyListState extends State<WarrantyList> {
  final List warranties = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(WarrantyList.title),
      ),
      body: Center(
        child: ListView(
          children: <WarrantyItem>[
            ...warranties.map((warranty) => WarrantyItem(itemId: warranty)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).restorablePush(_dialogBuilder);
        },
        child: const Icon(Icons.add),
        tooltip: 'Add',
      ),
    );
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => const AddWarrantyItem(),
    );
  }
}
