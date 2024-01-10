// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';

class CustomButton extends StatefulWidget {
  final Color textColor;
  final Color backgrooundColor;
  final String text;
  final VoidCallback? onPressed;

  const CustomButton(
      {super.key,
      this.textColor = const Color(0xE2650C01),
      this.backgrooundColor = const Color(0xE2650C01),
      this.text = 'Continue',
      this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed ?? () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Container(
          height: screenHeight * 0.076,
          width: screenWidth,
          decoration: BoxDecoration(
            color: widget.backgrooundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 20,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
