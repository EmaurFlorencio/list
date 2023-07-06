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
              Text(
                "Fundamentos de Progamação Aplicada",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Versão 0.1.0",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Autor: Emaur Florêncio de Oliveira",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
