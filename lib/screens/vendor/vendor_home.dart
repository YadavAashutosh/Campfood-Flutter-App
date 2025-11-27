import 'package:flutter/material.dart';
import 'vendor_menu.dart';

class VendorHomeScreen extends StatelessWidget {
  const VendorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock vendor data
    final vendors = [
      {"name": "Ballu Bhai Canteen", "id": "vendor1"},
      {"name": "Snack Corner", "id": "vendor2"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Vendor Dashboard"),
        backgroundColor: Colors.deepOrange[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: vendors.length,
          itemBuilder: (context, index) {
            final vendor = vendors[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => VendorMenuScreen(vendorId: vendor['id']!)));
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Text(
                    vendor['name']!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.deepOrange[800]),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.deepOrange),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
