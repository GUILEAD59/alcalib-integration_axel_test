import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:alcalib/methods/methods.dart';


class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
        SizedBox(height: 10,),
        Row(
        children: [
        SizedBox(width: 20,),
        IconButton(icon:Icon(Icons.arrow_back_ios_new),
        onPressed: (){
        backToPage(context);
        },),
        ],
        ),

            SizedBox(height: 30,),

            Container(
            color: Colors.white,
            child:  Center(
              child: Stack(
                children: [

                  Image(image: AssetImage("assets/alcalibLogo.png")),

                  Center(child: text(text: "Alcalib v1.0.1", fontFamily: "Poppins-Regular", fontSize: 13)),
                ]
                ),
              ),
            ),]
        ),
      ),
    );
  }
}
