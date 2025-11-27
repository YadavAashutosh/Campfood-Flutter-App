import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WalletProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  double balance = 0.0;

  // Load wallet balance
  Future<void> loadBalance(String userId) async {
    DocumentSnapshot doc = await _firestore.collection('wallets').doc(userId).get();
    balance = doc.exists ? (doc['balance'] ?? 0).toDouble() : 0.0;
    notifyListeners();
  }

  // Top-up wallet
  Future<void> topUp(String userId, double amount) async {
    balance += amount;
    await _firestore.collection('wallets').doc(userId).set({'balance': balance});
    notifyListeners();
  }

  // Deduct amount after order
  Future<void> deduct(String userId, double amount) async {
    balance -= amount;
    await _firestore.collection('wallets').doc(userId).set({'balance': balance});
    notifyListeners();
  }
}
