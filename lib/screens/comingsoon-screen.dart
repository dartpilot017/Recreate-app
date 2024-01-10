// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
        vertical: screenHeight * 0.06,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.025,
                right: screenWidth * 0.029,
                bottom: screenHeight * 0.01),
            child: SvgPicture.asset(
              'assets/images/coming-soon-screen-assets/coming-sooon.svg',
              width: screenWidth * 0.8,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'assets/images/icon-assets/loading-icon.svg',
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.007,
          ),
          Stack(
            children: [
              Column(
                children: [
                  Text(
                    'Coming Soon!',
                    style: TextStyle(
                      color: const Color(0xFF650C01),
                      fontSize: screenWidth * 0.098,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.007,
                  ),
                  Text(
                    'We’ll be up soon, keep an eye\non us.',
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: screenWidth * 0.0426,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/icon-assets/thunderbolt-icon.svg',
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
