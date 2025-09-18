import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final double lineHeight;
  final EdgeInsetsGeometry margin;

  const Paragraph({
    super.key,
    required this.text,
    this.size = MarkdownStyles.baseFontSize,
    this.color = MarkdownStyles.textColor,
    this.lineHeight = MarkdownStyles.lineHeight,
    this.margin = const EdgeInsets.symmetric(
      vertical: MarkdownStyles.paragraphSpacing,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: TextStyle(fontSize: size, color: color, height: lineHeight),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String label;
  final int level;

  const Header({super.key, required this.label, required this.level});

  @override
  Widget build(BuildContext context) {
    double fontSize = 18;
    switch (level) {
      case 1:
        fontSize = 48;
        break;
      case 2:
        fontSize = 32;
        break;
      case 3:
        fontSize = 24;
        break;
      case 4:
        fontSize = 20;
        break;
      case 5:
        fontSize = 14;
        break;
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: MarkdownStyles.headerSpacing,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class UnorderedList extends StatelessWidget {
  final List<String> items;
  final double size;
  final Color color;

  const UnorderedList({
    super.key,
    required this.items,
    this.size = MarkdownStyles.baseFontSize,
    this.color = MarkdownStyles.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final bulletSize = size * MarkdownStyles.bulletScale;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: EdgeInsets.only(bottom: size * MarkdownStyles.itemSpacing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: bulletSize,
                height: bulletSize,
                margin: EdgeInsets.only(
                  top: size * MarkdownStyles.bulletTopMargin,
                ),
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              SizedBox(width: size * MarkdownStyles.bulletTextSpacing),
              Expanded(
                child: Text(
                  item,
                  style: TextStyle(fontSize: size, color: color),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
