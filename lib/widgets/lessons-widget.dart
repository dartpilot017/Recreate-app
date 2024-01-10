// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';

class LessonWidget extends StatelessWidget {
  final String imagePATH;
  final String description;
  final String title;
  final int colorValue;
  const LessonWidget({
    super.key,
    required this.imagePATH,
    required this.description,
    required this.title,
    required this.colorValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.176,
      child: Stack(
        children: [
          Container(
            height: screenHeight * 0.15,
            width: screenWidth,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  screenWidth * 0.05,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                screenWidth * 0.05,
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  const Color(0xff000000).withOpacity(0.3),
                  BlendMode.softLight,
                ),
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePATH),
                      fit: BoxFit.cover,
                      scale: 0.8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        screenWidth * 0.05,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.068,
                      top: screenHeight * 0.015,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.06,
                            fontFamily: 'JosefiSans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.03,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.124,
            right: screenWidth * 0.02,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Color(colorValue),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: screenWidth * 0.08,
                    color: const Color(0xffffffff),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
