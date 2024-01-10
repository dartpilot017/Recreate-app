// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CountryFlagsDropdown extends StatefulWidget {
  const CountryFlagsDropdown({Key? key}) : super(key: key);

  @override
  _CountryFlagsDropdownState createState() => _CountryFlagsDropdownState();
}

class _CountryFlagsDropdownState extends State<CountryFlagsDropdown> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 26,
          height: 18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: const DecorationImage(
              image: AssetImage('assets/images/icon-assets/uk-flag-icon.webp'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Icon(
          Icons.arrow_drop_down,
          size: 30,
          color: Color(0xFF908989),
        ),
      ],
    );
  }
}
