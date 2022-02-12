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
    //TODO: get item from database @return Warranty
    item =
        Warranty(widget.itemId, "Test Product", "img.png", DateTime.now(), 2);
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
                  '${item.purchaseDate.day}. ${item.purchaseDate.month}. ${item.purchaseDate.year}',
                  style: Theme.of(context).textTheme.headline6,
                ),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: ((context) => [
                          const PopupMenuItem(
                            value: 1,
                            child: Text('Edit'),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Text('Delete'),
                          ),
                        ]))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
