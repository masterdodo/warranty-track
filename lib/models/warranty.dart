class Warranty {
  String id;
  String name;
  String imageSrc;
  DateTime purchaseDate;
  int warrantyLength;

  Warranty(this.id, this.name, this.imageSrc, this.purchaseDate,
      this.warrantyLength);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageSrc': imageSrc,
      'purchaseDate': purchaseDate,
      'warrantyLength': warrantyLength
    };
  }
}
