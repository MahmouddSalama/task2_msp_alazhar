import 'package:flutter/material.dart';
import 'package:task2_msp_alazhar/screens/home_screen.dart';
import 'package:task2_msp_alazhar/widgets/button.dart';
import 'package:task2_msp_alazhar/widgets/text_field.dart';
class MyLoginDialog extends StatelessWidget {
  final Size size;

  const MyLoginDialog({required this.size}) ;
  @override
  Widget build(BuildContext context) {
    var control = TextEditingController();
    return  AlertDialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.white.withOpacity(.9),
      title: Text('Login'),
      content: Container(
        width: size.width - 100,
        height: size.height * .4,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: MyTextField(
                  prefixIcon: Icons.email,
                  hintText: '*****@gmail.com',
                  lableText: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                  val: 0,
                  textEditingController: control,
                ),
              ),
              Container(
                child: MyTextField(
                  prefixIcon: Icons.email,
                  hintText: '*****',
                  lableText: 'Password',
                  textInputType:
                  TextInputType.visiblePassword,
                  val: 1,
                  textEditingController: control,
                ),
              ),
              SizedBox(height: 20),
              MyButton(
                text: "Sign in",
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                },
                color: Colors.blue,
                size: size.height*.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MySignDialog extends StatelessWidget {
  final Size size;

  const MySignDialog({required this.size}) ;
  @override
  Widget build(BuildContext context) {
    var control = TextEditingController();
    return  AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.white.withOpacity(.9),
      title: Text('Sign Up'),
      content: Container(
        width: size.width - 100,
        height: size.height * .53,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: MyTextField(
                  prefixIcon: Icons.person_sharp,
                  hintText: 'mahmoud',
                  textInputType: TextInputType.name,
                  val: 0,
                  textEditingController: control,
                  lableText: 'Name',
                ),
              ),
              Container(
                child: MyTextField(
                  prefixIcon: Icons.email,
                  hintText: '*****@gmail.com',
                  lableText: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                  val: 0,
                  textEditingController: control,
                ),
              ),
              Container(
                child: MyTextField(
                  prefixIcon: Icons.lock,
                  hintText: '*****',
                  lableText: 'Password',
                  textInputType:
                  TextInputType.visiblePassword,
                  val: 1,
                  textEditingController: control,
                ),
              ),
              Container(
                child: MyTextField(
                  prefixIcon: Icons.lock,
                  hintText: '*****',
                  lableText: 'Confirm ',
                  textInputType:
                  TextInputType.visiblePassword,
                  val: 1,
                  textEditingController: control,
                ),
              ),
              SizedBox(height: 20),
              MyButton(
                text: "Sign Up",
                function: (){},
                color: Colors.blue,
                size: size.height*.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
