import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2_msp_alazhar/constants/image_url.dart';
import 'package:task2_msp_alazhar/widgets/alert_Dialog.dart';
import 'package:task2_msp_alazhar/widgets/background_image.dart';
import 'package:task2_msp_alazhar/widgets/button.dart';
import 'package:task2_msp_alazhar/widgets/text_field.dart';

class LSScreen extends StatelessWidget {
  var control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(size: size),
          Align(
            alignment: Alignment(0, -.7),
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
            alignment: Alignment(0, -.45),
            child: Text(
              'Welcome to the space application',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          Align(
            alignment: Alignment(0, .9),
            child: Container(
              height: size.height * .25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        text: "Log in",
                        function: () {
                          final dialog = MyLoginDialog(size: size);
                          showDialog(
                              context: context,
                              builder: (_) {
                                return dialog;
                              });
                        },
                        color: Colors.blue,
                        size: size.width * .4,
                      ),
                      MyButton(
                        text: "Sign Up",
                        function: () {
                          final dialog = MySignDialog(size: size);
                          showDialog(
                              context: context,
                              builder: (_) {
                                return dialog;
                              });
                        },
                        color: Colors.lightBlue,
                        size: size.width * .4,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: 'Continue with Google',
                    function: () {},
                    color: Colors.white,
                    size: size.width * .8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
