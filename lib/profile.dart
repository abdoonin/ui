import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Abdoonin',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'abdoonin9@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+9647802256331'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text(' Erbil, Iraq'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Date of Birth: November 4, 1999'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
