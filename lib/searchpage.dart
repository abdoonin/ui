import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'john.doe@example.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+1 (123) 456-7890'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 Main Street, City, Country'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Date of Birth: January 1, 1990'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add onPressed action for editing profile
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
