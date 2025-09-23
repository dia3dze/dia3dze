import 'package:flutter/material.dart';
import 'package:dia3dze/components/base_page.dart';
import 'package:dia3dze/styles.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BasePage(
      children: [
        Center(
          child: SizedBox(
            height: screenHeight * PdfStyles.heightFraction,
            width: screenWidth * PdfStyles.widthFraction,
            child: SfPdfViewer.asset('assets/docs/resume.pdf'),
          ),
        ),
      ],
    );
  }
}
