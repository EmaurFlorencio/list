import 'package:flutter/material.dart';
import 'package:list/pages/about_page.dart';
import 'package:list/pages/home_page.dart';
import 'package:list/pages/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttom Navigation Bar',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const [
          Center(
            child: HomePage(),
          ),
          Center(
            child: TodoListPage(),
          ),
          Center(
            child: AboutPage(),
          ),
        ][selectedPageIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Inicial',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.engineering),
              icon: Icon(Icons.engineering_outlined),
              label: 'Tarefas',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Sobre',
            ),
          ],
        ),
      ),
    );
  }
}
