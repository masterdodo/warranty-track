import 'package:flutter/material.dart';

class AddWarrantyItem extends StatefulWidget {
  const AddWarrantyItem({Key? key}) : super(key: key);

  @override
  _AddWarrantyItemState createState() => _AddWarrantyItemState();
}

class _AddWarrantyItemState extends State<AddWarrantyItem> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _purchaseDate = TextEditingController();
  final TextEditingController _warrantyLength = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Add Warranty",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: _name,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          InputDatePickerFormField(
            firstDate: DateTime(1970),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
            fieldHintText: "Purchase date",
            fieldLabelText: "Purchase date",
          ),
          TextField(
            controller: _warrantyLength,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Warranty length"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffA5D6A7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Add"),
          ),
          /*((nameEmptyError)
              ? Text(
                  "Name can't be empty!",
                  style: TextStyle(color: Colors.red[300]),
                )
              : Container()),*/
        ],
      ),
    );
  }
}
