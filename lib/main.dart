import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'providers/auth_provider.dart';
import 'providers/order_provider.dart';
import 'providers/wallet_provider.dart';

import 'screens/common/login_screen.dart';
import 'screens/student/student_home.dart';
import 'screens/vendor/vendor_home.dart';
import 'screens/admin/admin_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CampFoodApp());
}

class CampFoodApp extends StatelessWidget {
  const CampFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => WalletProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Campus Foodie',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.orange[50],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange[700],
            elevation: 2,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[700],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}

/// AuthWrapper decides which home screen to show based on logged-in user role
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    if (authProvider.user == null) {
      // Not logged in
      return const LoginScreen();
    }

    // Redirect based on role
    switch (authProvider.user!.role) {
      case 'student':
        return const StudentHomeScreen();
      case 'vendor':
        return const VendorHomeScreen();
      case 'admin':
        return const AdminHomeScreen();
      default:
        return const LoginScreen();
    }
  }
}
