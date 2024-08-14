import 'package:flutter/material.dart';

class CommuntyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'مرحبا بك في مجتمنا الهندسي ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'هنا، يمكنك التواصل مع مستخدمين آخرين، وطرح الأسئلة، ومشاركة معرفتك.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          // Add a list of community features or sections here

          // Add more features or sections as needed
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        // onPressed: () {},
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Enter your text'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Type something...'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('CANCEL'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add logic to save the text
                      Navigator.of(context).pop();
                    },
                    child: Text('SAVE'),
                  ),
                ],
              );
            },
          );
        },
        elevation: 4,
        backgroundColor: Colors.white54,
        tooltip: 'Tap me !',
        foregroundColor: Colors.black87,
        child: Icon(Icons.add_box_rounded),
      ),
    );
  }
}
