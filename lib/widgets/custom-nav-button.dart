// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';

class CustomNavButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isActive;
  final bool isSelected;
  final String text;
  const CustomNavButton(
      {required this.onPressed,
      this.isActive = false,
      required this.isSelected,
      required this.text,
      super.key});

  @override
  State<CustomNavButton> createState() => _CustomNavButtonState();
}

class _CustomNavButtonState extends State<CustomNavButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isActive || widget.isSelected) {
          setState(() {
            widget.onPressed();
          });
        }
      },
      child: widget.isSelected
          ? Container(
              margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.005,
                  horizontal: screenWidth * 0.01),
              decoration: ShapeDecoration(
                color: const Color(0xFF650C01),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            )
          : Container(
              margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.005,
                  horizontal: screenWidth * 0.016),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: const Color(0xff908989),
                    fontSize: screenWidth * 0.045,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
    );
  }
}
