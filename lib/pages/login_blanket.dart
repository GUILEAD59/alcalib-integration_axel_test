import 'package:alcalib/custom/customWidget.dart';
import 'package:alcalib/pages/book_details.dart';
import 'package:alcalib/pages/login.dart';
import 'package:alcalib/custom/variables.dart';
import 'package:flutter/material.dart';

import '../page/home.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double appBarRadius = 40;
    double appBarHeight =MediaQuery.of(context).size.height*0.7;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: appBarHeight+20,
        flexibleSpace: Container(
          height: appBarHeight,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(appBarRadius),
                  bottomRight: Radius.circular(appBarRadius)),
            image: DecorationImage(
              image: AssetImage("$imgSource/Splas_asset.png"),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Lis un livre",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),),
              const Text("Peu importe où tu es!",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(()=>NavigatorPush(context: context, Page: LogInField()));
              }, child: Text("Login", style: TextStyle(fontFamily: "Poppins-Regular"),),
                style: ElevatedButton.styleFrom(

                  minimumSize: Size(
                      sizeW(context: context)*0.8,
                      sizeH(context: context)*0.07),
                  primary: primaryColor,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
