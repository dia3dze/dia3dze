import 'package:flutter/material.dart';
import 'package:dia3dze/components/base_page.dart';
import 'package:dia3dze/components/markdown.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        Header(level: 1, label: "Contact Me"),
        Paragraph(text: "I'm always open for hearing from you."),
        Divider(),
        Header(level: 4, label: "Email:"),
        Paragraph(text: "saba2006.diasamidze@gmail.com"),
        Divider(),
        Header(level: 4, label: "phone:"),
        Paragraph(text: "+995 595 60 50 50"),
        Divider(),
        Header(level: 4, label: "GitHub:"),
        Paragraph(text: "http://www.github.com/dia3dze"),
        Divider(),
      ],
    );
  }
}
