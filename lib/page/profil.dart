import 'dart:io';
import 'package:alcalib/methods/methods.dart';
import 'package:alcalib/page/settings.dart';
import 'package:flutter/material.dart';
import 'package:alcalib/page/aboutPage.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../pages/login_blanket.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {

  Color color = Colors.blue;
  File? _image;
  Future getImage() async
  {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imgtemp = File(image.path);

      setState(() => this._image = imgtemp);
    }on PlatformException catch(e)
    {
      print("Failed to pick image $e");
    }
  }

  Future getImageCam() async
  {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imgtemp = File(image.path);


      setState(() => this._image = imgtemp);
    }on PlatformException catch(e)
    {
      print("Failed to pick image $e");
    }
  }



  String _userName = "Alcatraz" ;
  //String _userProfil = "assets/profilAvatar.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Column(
          children: [
            Stack(
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 120,),

                        Stack(
                            children:
                            [
                              Center(
                                child: (_image != null ?
                                ClipOval(
                                    child:
                                    Image.file(_image!, width: 120, height: 120, fit: BoxFit.cover,)): Image.asset(_image.toString())) as Widget,
                              ),
                              Align(
                                  alignment: Alignment(0.3, 0),
                                  child: InkWell(
                                    onTap: ()  =>  showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text("Faites un choix"),
                                            actions: [
                                              Row(
                                                children: [
                                                  SizedBox(width: 50,),
                                                  IconButton(iconSize:30,onPressed: () => getImageCam(), icon: Icon(Icons.camera_alt)),
                                                  SizedBox(width: 30,),
                                                  IconButton(iconSize:30,onPressed: () => getImage(), icon: Icon(Icons.image)),

                                                ],
                                              )
                                            ],
                                          );
                                        }
                                    ),
                                    child: Icon(
                                      Icons.photo_camera, size: 30, color: Colors.white,),
                                  )

                              ),]
                        ),
                        SizedBox(height: 10,),

                        text(text: _userName, fontFamily: "Poppins-Medium", fontSize: 20.0, color: Colors.white),
                      ],
                    ),
                  )]
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.settings_outlined, color: Colors.deepPurple,),
                SizedBox(width: 15,),
                InkWell(onTap:()
                {
                  newPage(context, settings());
                },child: text(text: "Settings", fontSize:16,fontFamily: "Poppins-Regular")),
              ],
            ),

            SizedBox(height: 15,),

            line(width: 350.0, color: Colors.grey.shade300),

            SizedBox(height: 15,),

            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.help_outline, color: Colors.deepPurple,),
                SizedBox(width: 15,),
                InkWell(child: text(text: "Help Center", fontSize:16, fontFamily: "Poppins-Regular")),
              ],
            ),

            SizedBox(height: 15,),

            line(width: 350.0, color: Colors.grey.shade300),

            SizedBox(height: 15,),

            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.error_outline, color: Colors.deepPurple,),
                SizedBox(width: 15,),
                InkWell(
                    onTap: ()
                    {
                      newPage(context, about());
                    },
                    child: text(text: "About", fontSize:16, fontFamily: "Poppins-Regular")),
              ],
            ),

            SizedBox(height: 15,),

            line(width: 350.0, color: Colors.grey.shade300),

            SizedBox(height: 15,),

            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.logout_outlined, color: Colors.deepPurple,),
                SizedBox(width: 15,),
                InkWell(
                    onTap: ()
                    {
                      newPage(context, LogIn());
                    },
                    child: text(text: "Logout", fontSize:16, fontFamily: "Poppins-Regular")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
