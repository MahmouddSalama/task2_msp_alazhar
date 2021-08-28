import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function function;
  final Color color;
  final  size;

  const MyButton({
    required this.text,
    required this.function,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: size,
      alignment: Alignment.center,
      height: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: ()=>function(),
        child: Text(
          text,
          style: GoogleFonts.aBeeZee(
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
