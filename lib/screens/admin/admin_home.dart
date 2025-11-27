import 'package:flutter/material.dart';
import 'add_user_screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock list of users
    final users = [
      {"name": "Test Student", "email": "test@student.com", "role": "student"},
      {"name": "Vendor One", "email": "vendor@campus.com", "role": "vendor"},
      {"name": "Admin User", "email": "admin@campus.com", "role": "admin"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  user['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text("${user['email']} - ${user['role']}"),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    // TODO: Delete user functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${user['name']} deleted")));
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddUserScreen()),
          );
        },
      ),
    );
  }
}
