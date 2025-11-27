import 'package:flutter/material.dart';

class VendorMenuScreen extends StatelessWidget {
  final String vendorId;
  const VendorMenuScreen({required this.vendorId, super.key});

  @override
  Widget build(BuildContext context) {
    // Mock menu items for vendor
    final menuItems = [
      {"name": "Tea", "price": 10, "discount": 1},
      {"name": "Samosa", "price": 20, "discount": 2},
      {"name": "Coffee", "price": 15, "discount": 2},
      {"name": "Sandwich", "price": 30, "discount": 5},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Menu"),
        backgroundColor: Colors.deepOrange[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  item["name"] as String,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.deepOrange[800]),
                ),
                subtitle: Text(
                    "Price: ₹${item['price']}  Discount: ₹${item['discount']}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          // TODO: Edit Item
                        },
                        icon: Icon(Icons.edit, color: Colors.blue)),
                    IconButton(
                        onPressed: () {
                          // TODO: Delete Item
                        },
                        icon: Icon(Icons.delete, color: Colors.red)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange[700],
        onPressed: () {
          // TODO: Add new menu item
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
