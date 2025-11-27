import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock Cart Items
    final cartItems = [
      {"name": "Tea", "quantity": 2, "price": 9},
      {"name": "Samosa", "quantity": 1, "price": 18},
    ];

    final total = cartItems.fold<int>(
        0, (sum, item) => sum + (item['quantity'] as int) * (item['price'] as int));

    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: Colors.orange[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(item['name'] as String,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800])),
                      subtitle:
                      Text("Qty: ${item['quantity']}  Price: ₹${item['price']}"),
                      trailing: Icon(Icons.delete, color: Colors.red),
                      onTap: () {
                        // TODO: Remove from cart
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text("Total: ₹$total",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Checkout logic
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[700], padding: EdgeInsets.all(16)),
                child: Text("Checkout", style: TextStyle(fontSize: 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
