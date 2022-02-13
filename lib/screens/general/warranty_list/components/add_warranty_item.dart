import 'package:flutter/material.dart';

class AddWarrantyItem extends StatefulWidget {
  const AddWarrantyItem({Key? key}) : super(key: key);

  @override
  _AddWarrantyItemState createState() => _AddWarrantyItemState();
}

class _AddWarrantyItemState extends State<AddWarrantyItem> {
  final TextEditingController _name = TextEditingController();
  DateTime _date = DateTime.now();
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
            onDateSaved: (DateTime date) => setState(() {
              _date = date;
            }),
            onDateSubmitted: (DateTime date) => setState(() {
              _date = date;
            }),
          ),
          TextField(
            controller: _warrantyLength,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Warranty length"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).buttonTheme.colorScheme?.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
            ),
            onPressed: () {
              print(_name.text);
              print(_date);
              print(_warrantyLength.text);
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
