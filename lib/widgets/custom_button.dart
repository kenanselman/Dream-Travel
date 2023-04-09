import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color colour;
  final String title;
  final VoidCallback? onPressed;
  final double width;

  CustomButton(
      {super.key,
      required this.title,
      required this.colour,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFFF2DE2C),
          ),
        ),
      ),
    );
  }
}
