import 'package:flutter/material.dart';
import '../components/base_page.dart';
import 'package:dia3dze/components/markdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        Header(label: "Hello, my name is saba.", level: 1),
        Header(label: "I'm a computer Engineer.", level: 2),
        Divider(),
        Header(label: "📍Georgia, tbilisi", level: 4),
        Divider(),
        Header(label: "Introduction", level: 4),
        Paragraph(
          text:
              "Welcome to my portfolio website. My name is Saba, and I’m an engineering student at Caucasus University. I don’t have professional work experience yet, but I’m improving my practical skills through hobby projects and personal practice.",
        ),
        Paragraph(
          text:
              "This website is both a way to practice my programming skills and a place to document my most meaningful projects, focusing on the areas I’m most interested in pursuing further.",
        ),
        Divider(),
        Header(label: "Skills", level: 4),
        UnorderedList(
          items: [
            "Analytics & Data Visualization: R, Python, Excel",
            "Programming & Software: Dart, Html/Css, Javascript",
            "Operating Systems: Bash scripting, system configuration, system monitoring",
          ],
        ),
      ],
    );
  }
}
