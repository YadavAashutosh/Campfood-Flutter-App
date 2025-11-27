import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/order.dart';
import '../models/user.dart';
import '../models/item.dart';

class OrderProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<AppOrder> orders = [];

  // Fetch orders for a user
  Future<void> fetchUserOrders(AppUser user) async {
    QuerySnapshot snapshot = await _firestore
        .collection('orders')
        .where('userId', isEqualTo: user.id)
        .get();

    orders = snapshot.docs
        .map((doc) => AppOrder.fromMap(doc.id, doc.data() as Map<String, dynamic>, user))
        .toList();

    notifyListeners();
  }

  // Place a new order
  Future<void> placeOrder(AppUser user, List<Item> items) async {
    double total = items.fold(0, (sum, item) => sum + item.finalPrice);

    AppOrder newOrder = AppOrder(
      id: '',
      user: user,
      items: items,
      totalPrice: total,
    );

    DocumentReference docRef = await _firestore.collection('orders').add(newOrder.toMap());

    // Update order id
    newOrder = AppOrder(
      id: docRef.id,
      user: user,
      items: items,
      totalPrice: total,
    );

    orders.add(newOrder);
    notifyListeners();
  }

  // Vendor can update order status
  Future<void> updateStatus(String orderId, String status) async {
    await _firestore.collection('orders').doc(orderId).update({'status': status});
    orders.firstWhere((o) => o.id == orderId).status = status;
    notifyListeners();
  }
}
