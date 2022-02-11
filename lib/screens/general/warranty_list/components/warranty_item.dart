import 'package:flutter/material.dart';
import 'package:garancija_app/models/warranty.dart';

class WarrantyItem extends StatefulWidget {
  final String itemId;

  const WarrantyItem({Key? key, required this.itemId}) : super(key: key);

  @override
  _WarrantyItemState createState() => _WarrantyItemState();
}

class _WarrantyItemState extends State<WarrantyItem> {
  late final Warranty item;

  @override
  void initState() {
    item = Warranty(widget.itemId, "Test Product", "img.png", DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "${item.id} - ${item.name}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  '${item.expiryDate.day}. ${item.expiryDate.month}. ${item.expiryDate.year}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
