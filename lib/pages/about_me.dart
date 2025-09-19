import 'package:flutter/material.dart';
import 'package:dia3dze/components/base_page.dart';
import 'package:dia3dze/components/markdown.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        Header(level: 4, label: "Who am I"),
        Paragraph(
          text:
              "I am a third-year student at Caucasus University pursuing a bachelor’s degree in Computer and Electronic Engineering. I have a strong interest in analytics and data engineering, with a secondary interest in software development.",
        ),
        Divider(),
        Header(level: 4, label: "What I do"),
        Paragraph(
          text:
              "I enjoy programming in Python and R, using libraries such as NumPy, Pandas, Matplotlib, and SciPy for data analysis and visualization.",
        ),
        Paragraph(
          text:
              "I can also create small applications for web, mobile, and desktop using Dart with the Flutter framework or React/React Native. My university major doesn’t cover web or software development in depth, so I have mostly taught myself beyond the C++ and data structures courses provided.",
        ),
        Paragraph(
          text:
              "I have a solid understanding of Linux environments, which I’ve been using since school. I am comfortable with tasks such as Bash scripting, system configuration, and general workflow optimization. I have experience with Arch Linux, Hyperland, and the Vim text editor, which shows my ability to work with configuration-heavy tools.",
        ),
        Divider(),
        Header(level: 4, label: "Future Plans"),
        Paragraph(
          text:
              "In the future, I aim to work in a technology-related company, ideally in areas such as statistics, data analysis, or IT, where I can apply what technical skills I already have.",
        ),
      ],
    );
  }
}
