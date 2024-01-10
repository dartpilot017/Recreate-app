// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/screens/streaks-screen.dart';
import 'package:recreate_app/widgets/country-flag-widget.dart';
import 'package:recreate_app/widgets/icon-text-widget.dart';

class AppBarWidget extends StatefulWidget {
  final bool showCircleAvatar;

  const AppBarWidget({Key? key, this.showCircleAvatar = true})
      : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.02,
          ),
          Container(
            padding: EdgeInsets.only(
              left: screenWidth * 0.03,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x7F908989)),
                borderRadius: BorderRadius.circular(screenWidth * 0.023),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CountryFlagsDropdown(),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  IconTextWidget(
                    text: '2',
                    imagePATH: 'assets/images/icon-assets/streak-icon.svg',
                    onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StreaksScreen(),
                        ),
                      ),
                    },
                  ),
                  SizedBox(
                    width: screenWidth * 0.1,
                  ),
                  const IconTextWidget(
                    text: '17',
                    imagePATH: 'assets/images/icon-assets/dartgame-icon.svg',
                  ),
                  SizedBox(
                    width: screenWidth * 0.23,
                  ),
                  const IconTextWidget(
                    text: '',
                    imagePATH:
                        'assets/images/icon-assets/notification-icon.svg',
                  ),
                  SizedBox(
                    width: screenWidth * 0.018,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.03,
          ),
          widget.showCircleAvatar
              ? SizedBox(
                  height: screenHeight * 0.042,
                  child: Center(
                    child: CircleAvatar(
                      radius: screenWidth * 0.06,
                      backgroundColor: const Color(0xffffbfb6),
                      child: Image.asset(
                        'assets/avatar.png',
                        fit: BoxFit.fill,
                        scale: 1,
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
