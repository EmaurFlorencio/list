import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.person_outline),
            SizedBox(width: 16),
            Center(child: const Text('Login')),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey[200],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PPGIA 7310 - UFRPE",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Image.asset('images/logo1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
