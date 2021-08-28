import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2_msp_alazhar/constants/image_url.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Space',style: GoogleFonts.almarai(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: imagesUrl.length-1,
        itemBuilder: (context,index){
          return Container(
            width: size.width,
            height: size.height*.4,
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:CachedNetworkImage(
                imageUrl: imagesUrl[index+1],
                placeholder: (context,url)=>Center(child: CircularProgressIndicator(),),
                errorWidget: (context,url,error)=>Icon(Icons.error,color: Colors.red,),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
