import 'package:flutter/material.dart';
import '../components/base_page.dart';
import 'package:dia3dze/components/markdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        Header(label: "header1", level: 1),
        Header(label: "header5", level: 5),
      ],
    );
  }
}
