class Warranty {
  String id;
  String name;
  String imageSrc;
  DateTime expiryDate;

  Warranty(this.id, this.name, this.imageSrc, this.expiryDate);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageSrc': imageSrc,
      'expiryDate': expiryDate,
    };
  }
}
