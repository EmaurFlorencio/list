import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.bookmark_border),
            SizedBox(width: 16),
            Center(child: const Text('Sobre o APP')),
          ],
        ),
      ),
      body: Center(
        child: const Text('Sobre o APP'),
      ),
    );
  }
}
