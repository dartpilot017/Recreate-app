// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/widgets/progress-widget.dart';

class IconTextProgressWidget extends StatelessWidget {
  final String imagePATH;
  final String text;
  final String percentageText;
  final double width;
  final VoidCallback? onPressed;

  const IconTextProgressWidget(
      {Key? key,
      required this.imagePATH,
      required this.text,
      required this.percentageText,
      required this.width,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
      ),
      child: GestureDetector(
        onTap: onPressed ?? () {},
        child: Container(
          width: screenWidth * 0.42,
          height: screenHeight * 0.2,
          decoration: ShapeDecoration(
            color: const Color(0xFFDEDECE),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x7F650C01)),
              borderRadius: BorderRadius.circular(screenWidth * 0.031),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.037,
              vertical: screenHeight * 0.02,
            ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildImage(),
                  SizedBox(height: screenHeight * 0.014),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.056,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'You completed $percentageText%',
                    style: TextStyle(
                      color: const Color(0xFF908989),
                      fontSize: screenHeight * 0.016,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.006),
                  ProgressWidget(
                    width1: width,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (imagePATH.endsWith('.svg')) {
      return SvgPicture.asset(imagePATH);
    } else if (imagePATH.endsWith('.png')) {
      return Image.asset(
        imagePATH,
        width: screenWidth * 0.1,
        height: screenHeight * 0.035,
        fit: BoxFit.cover,
      );
    } else {
      return Container();
    }
  }
}
