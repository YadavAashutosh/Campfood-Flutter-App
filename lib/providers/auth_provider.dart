import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AppUser? user;

  // Login with email & password
  Future<bool> login(String email, String password) async {
    try {
      UserCredential cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      DocumentSnapshot userDoc =
      await _firestore.collection('users').doc(cred.user!.uid).get();

      user = AppUser.fromMap(userDoc.id, userDoc.data() as Map<String, dynamic>);
      notifyListeners();
      return true;
    } catch (e) {
      print("Login Error: $e");
      return false;
    }
  }

  // Logout
  Future<void> logout() async {
    await _auth.signOut();
    user = null;
    notifyListeners();
  }

  // Optional: fetch current user data
  Future<void> fetchUser() async {
    if (_auth.currentUser != null) {
      DocumentSnapshot userDoc =
      await _firestore.collection('users').doc(_auth.currentUser!.uid).get();
      user = AppUser.fromMap(userDoc.id, userDoc.data() as Map<String, dynamic>);
      notifyListeners();
    }
  }
}
