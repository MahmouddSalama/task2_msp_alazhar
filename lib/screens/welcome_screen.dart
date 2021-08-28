import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2_msp_alazhar/constants/image_url.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2_msp_alazhar/screens/LS_screen.dart';
import 'package:task2_msp_alazhar/widgets/background_image.dart';
import 'package:task2_msp_alazhar/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(size: size),
          Align(
            alignment: Alignment(0, -.3),
            child: Text(
              'Welcome',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
                letterSpacing: 6,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, .7),
            child: MyButton(
              size: size.width-200,
              text: 'Get Start',
              color: Colors.white,
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LSScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
