// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InterestButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isActive;
  final bool isSelected;
  final String text;

  const InterestButton({
    Key? key,
    required this.onPressed,
    required this.isActive,
    required this.isSelected,
    required this.text,
  }) : super(key: key);

  @override
  _InterestButtonState createState() => _InterestButtonState();
}

class _InterestButtonState extends State<InterestButton> {
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
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1.3, color: Color(0xB2650C01)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFC57B72),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.8, vertical: 5.8),
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          : DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 1.0,
              color: const Color(0x7F650C01),
              dashPattern: const [7, 2.5],
              strokeCap: StrokeCap.butt,
              radius: const Radius.circular(20),
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    child: Text(
                      widget.text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'JosefinSans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
