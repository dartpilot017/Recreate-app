// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double width1;
  final double? width;
  final double? height;

  const ProgressWidget({
    Key? key,
    required this.width1,
    this.height = 10,
    this.width = 322,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: 10,
          decoration: ShapeDecoration(
            color: const Color(0xFF908989),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Container(
          width: width !* width1,
          height: height,
          decoration: ShapeDecoration(
            color: const Color(0xFF650C01),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
