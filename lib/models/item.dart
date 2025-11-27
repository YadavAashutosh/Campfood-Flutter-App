class Item {
  final String id;
  final String name;
  final double price;
  final double discount;

  Item({
    required this.id,
    required this.name,
    required this.price,
    this.discount = 0,
  });

  double get finalPrice => price - discount;

  factory Item.fromMap(String id, Map<String, dynamic> data) {
    return Item(
      id: id,
      name: data['name'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
      discount: (data['discount'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'discount': discount,
    };
  }
}
