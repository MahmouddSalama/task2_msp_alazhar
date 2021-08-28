import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {

  final TextInputType textInputType;
  final IconData prefixIcon;
  final String hintText;
  final String lableText;
  final TextEditingController textEditingController;
  final int val;

  const MyTextField({
    required this.textInputType,
    required this.prefixIcon,
    required this.hintText,
    required this.lableText,
    required this.textEditingController,
    required this.val,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool is_vis=true;
  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1,
      child: TextFormField(
        obscureText:widget.val==0?false:is_vis,
        onChanged: (value) {},
        controller: widget.textEditingController,
        decoration: InputDecoration(
          suffixIcon: widget.val == 1
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      is_vis=!is_vis;
                    });
                  },
                  icon: Icon(
                   is_vis? Icons.visibility:Icons.visibility_off,
                    size: 20,
                    color: Colors.blue,
                  ),
                )
              : null,
          hintText: widget.hintText,
          labelText: widget.lableText,
          labelStyle: TextStyle(fontSize: 12),
          hintStyle: TextStyle(fontSize: 12),
          prefixIcon: Icon(
            widget.prefixIcon,
            size: 20,
            color: Colors.blue,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlue,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.blue.withOpacity(.5),
            ),
          ),
        ),
      ),
    );
  }
}
