import 'package:dia3dze/constants.dart';
import 'package:dia3dze/styles.dart';
import 'package:flutter/material.dart';

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
                onPressed: () {},
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
}
