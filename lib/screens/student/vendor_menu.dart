import 'package:flutter/material.dart';
import 'cart_screen.dart';

class VendorMenuScreen extends StatelessWidget {
  final String vendorId;
  const VendorMenuScreen({required this.vendorId, super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {"name": "Tea", "price": 10, "discount": 1},
      {"name": "Samosa", "price": 20, "discount": 2},
      {"name": "Coffee", "price": 15, "discount": 2},
      {"name": "Sandwich", "price": 30, "discount": 5},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.orange[700],
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CartScreen()));
              })
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          final finalPrice =
              (item["price"] as int) - (item["discount"] as int); // fixed

          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(item["name"] as String,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.orange[800])),
              subtitle: Text(
                  "Price: ₹${item['price']} - Discount: ₹${item['discount']} = ₹$finalPrice"),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[700]),
                onPressed: () {
                  // TODO: Add to cart logic
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${item['name']} added to cart")));
                },
                child: Text("Add"),
              ),
            ),
          );
        },
      ),
    );
  }
}
