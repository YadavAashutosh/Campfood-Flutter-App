import 'item.dart';
import 'user.dart';

class AppOrder {
  String id;
  AppUser user;
  List<Item> items;
  double totalPrice;
  String status;

  AppOrder({
    required this.id,
    required this.user,
    required this.items,
    required this.totalPrice,
    this.status = 'Placed',
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': user.id,
      'items': items.map((e) => e.toMap()).toList(),
      'totalPrice': totalPrice,
      'status': status,
    };
  }

  factory AppOrder.fromMap(String id, Map<String, dynamic> map, AppUser user) {
    return AppOrder(
      id: id,
      user: user,
      items: List<Item>.from(
          map['items'].map(
                  (x) => Item.fromMap(x['id'], x as Map<String, dynamic>)
          )
      ),
      totalPrice: (map['totalPrice'] as num?)?.toDouble() ?? 0.0,
      status: map['status'] ?? 'Placed',
    );
  }
}
