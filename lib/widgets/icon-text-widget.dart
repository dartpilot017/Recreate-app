// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final String imagePATH;
  final VoidCallback? onPressed;

  const IconTextWidget({
    Key? key,
    required this.text,
    required this.imagePATH,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Row(
        children: [
          SvgPicture.asset(
            imagePATH,
            width: 60.10,
            height: 17.87,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF650C01),
              fontSize: 12,
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.w500,
              height: 0.28,
            ),
          ),
        ],
      ),
    );
  }
}
