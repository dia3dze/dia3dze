import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_me.dart';
import 'pages/projects.dart';
import 'pages/resume.dart';
import 'pages/contanct.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/about_me': (context) => AboutMePage(),
        '/projects': (context) => ProjectsPage(),
        '/resume': (context) => ResumePage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
