import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF29465F),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextFormField(
              initialValue: 'Hasan',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(15),
              ),
            ),

            const SizedBox(height: 12),

            TextFormField(
              initialValue: '01745-777777',
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(15),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF42677F),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView(
                children: const [

                  ContactTile(
                    name: 'Jawed',
                    phone: '01745-777777',
                  ),

                  ContactTile(
                    name: 'Ferdous',
                    phone: '01673-777777',
                  ),

                  ContactTile(
                    name: 'Hasan',
                    phone: '01745-777777',
                  ),

                  ContactTile(
                    name: 'Hasan',
                    phone: '01745-777777',
                  ),

                  ContactTile(
                    name: 'Hasan',
                    phone: '01745-777777',
                  ),

                  ContactTile(
                    name: 'Hasan',
                    phone: '01745-777777',
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String name;
  final String phone;

  const ContactTile({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),

      child: ListTile(
        leading: const Icon(
          Icons.person,
          color: Colors.black87,
          size: 28,
        ),

        title: Text(
          name,
          style: const TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        subtitle: Text(
          phone,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),

        trailing: const Icon(
          Icons.call,
          color: Colors.lightBlue,
          size: 25,
        ),
      ),
    );
  }
}