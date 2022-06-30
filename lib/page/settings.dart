import 'package:flutter/material.dart';

import 'package:alcalib/methods/methods.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    final _userControl = TextEditingController();
    var _userName = "Alcatraz";

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 12,),
              SafeArea(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    IconButton(icon:Icon(Icons.arrow_back_ios_new),
                    onPressed: (){
                      backToPage(context);
                    },),
                  ],
                ),
              ),

        Column(
        children:
        [
        SizedBox (height: 20),
        Row(
          children: [
            SizedBox(width: 30,),
            ClipOval(
              child: Image(width: 100, height: 100,fit: BoxFit.cover, image: AssetImage("assets/profilAvatar.jpg"),),
            ),
            SizedBox(width: 20,),
            text(text: _userName, fontFamily: "Poppins", fontSize: 25, color: Colors.black),
            SizedBox(width: 20,),
            InkWell(
                onTap: ()  =>  showDialog(
                  context: context,
                  builder: (BuildContext context)
                  {
                    return AlertDialog(
                      content: Container(
                          width: 150,
                          child: TextField(
                        controller: _userControl,

                      )),
                      title: Text("Nom d'utilisateur"),
                      actions: [
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text("Annuler")),
                            TextButton(onPressed: (){
                              backToPage(context);

                              setState(() { _userName = _userControl.text;
                              });
                              print(_userName);

                            }, child: Text("Modifier")),
                          ],
                        )
                      ],

                    );
                  },),
                child: Icon(Icons.edit)
            ),
          ],
        ),
        SizedBox(height: 30,),



        //line(width: 350.0, color: Colors.grey.shade500),

        SizedBox(height: 15,),

        Row(
          children: [
            SizedBox(width: 30,),
            Icon(Icons.remove_red_eye, color: Colors.black,),
            SizedBox(width: 15,),
            text(text: "Livres lus : ", fontSize:16, fontFamily: "Poppins-Regular", color: Colors.black),
          ],
        ),

        SizedBox(height: 15,),

        line(width: 350.0, color: Colors.grey.shade500),

        SizedBox(height: 15,),

        Row(
          children: [
            SizedBox(width: 30,),
            Icon(Icons.upload, color: Colors.black,),
            SizedBox(width: 15,),
            text(text: "Livres Uploadés : ", fontSize:16, fontFamily: "Poppins-Regular", color: Colors.black),
          ],
        ),

        SizedBox(height: 15,),

        line(width: 350.0, color: Colors.grey.shade500),

        SizedBox(height: 15,),

        Row(
          children: [
            SizedBox(width: 30,),
            Icon(Icons.download, color: Colors.black,),
            SizedBox(width: 15,),
            text(text: "Livre téléchargé : ", fontSize:16, fontFamily: "Poppins-Regular", color: Colors.black),
          ],
        ),
        ],
    )]),
      ));
  }
}
