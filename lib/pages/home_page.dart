import 'package:flutter/material.dart';
import '../components/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(child: Center(child: Text("Home Page")));
  }
}
