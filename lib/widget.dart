import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextOf extends StatelessWidget {
  TextOf(this.text, this.size, this.weight, this.color, {Key? key})
      : super(key: key);
  String text;
  FontWeight weight;
  double size;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.muli(
          color: color,
          fontSize: size,
          fontWeight: weight,
        ));
  }
}
