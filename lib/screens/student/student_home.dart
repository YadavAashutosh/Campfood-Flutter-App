import 'package:flutter/material.dart';
import 'vendor_menu.dart';
import 'cart_screen.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text("Student Dashboard"),
        backgroundColor: Colors.orange[700],
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CartScreen()));
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          children: [
            VendorCard(
              vendorName: "Ballu Bhai Canteen",
              vendorId: "vendor1",
              imageUrl:
              "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
            ),
            VendorCard(
              vendorName: "Snack Corner",
              vendorId: "vendor2",
              imageUrl:
              "https://images.unsplash.com/photo-1617196031135-2c95c52c3c45",
            ),
          ],
        ),
      ),
    );
  }
}

class VendorCard extends StatelessWidget {
  final String vendorName;
  final String vendorId;
  final String imageUrl;

  const VendorCard(
      {required this.vendorName, required this.vendorId, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => VendorMenuScreen(vendorId: vendorId)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 5))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.network(
                imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                vendorName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.orange[800]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            Icon(Icons.arrow_forward, color: Colors.orange[700])
          ],
        ),
      ),
    );
  }
}
