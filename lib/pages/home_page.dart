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
        Header(label: "📍Georgia, tbilisi", level: 4),
        Paragraph(
          text:
              "Right now, I am a student with no professional experience, my skills are the result of my curiosity and dedication to exploring new topics. I enjoy learning through self-paced carriculum.",
        ),
        Header(label: "Skills", level: 4),
        UnorderedList(
          items: ["analytics", "programming & software", "operating systems"],
        ),
      ],
    );
  }
}
