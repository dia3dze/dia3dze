import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/services.dart' show rootBundle;

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 5,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: downloadResume,
                icon: const Icon(Icons.download),
                label: const Text('Download Resume'),
                style: BaseButtonStyles.downloadResumeStyle,
              ),
              Row(
                children: const [
                  Icon(Icons.public),
                  SizedBox(width: 4),
                  Text('Georgia, Tbilisi'),
                  SizedBox(width: 8),
                  Icon(Icons.access_time, size: 16),
                  SizedBox(width: 4),
                  Text('UTC+4'),
                ],
              ),
            ],
          ),
        ),
        Divider(color: AppColors.surfaceDark),
      ],
    );
  }

  void downloadResume() async {
    final bytes = await rootBundle.load('assets/docs/resume.pdf');
    final pdfBytes = bytes.buffer.asUint8List();

    final blob = html.Blob([pdfBytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'resume.pdf')
      ..click();
    html.Url.revokeObjectUrl(url);
  }
}
