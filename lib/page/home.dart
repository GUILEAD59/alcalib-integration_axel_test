import 'package:alcalib/custom/variables.dart';
import 'package:flutter/material.dart';
import 'package:alcalib/methods/methods.dart';

import '../pages/book_details.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  Future<bool> _onWillPop() async {
    return true; //<-- SEE HERE
  }

final  _recentBook = [
    bookCard("assets/Cover.png"),
    bookCard("assets/Cover0.png"),
    bookCard("assets/Cover1.png"),
    bookCard("assets/Cover1.png"),
  ];

  int _liked = 17;

  String _bookCategory = "IRT";
  String _suggestbookName = "The first man";
  String _suggestbookAuthor = "Robert Verlander";
  String _userName = "Alcatraz";
 String _bookName = "The institute";
 String _boonAuthor = "Stephen king";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
              elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                    ),
                  child: Row(
                    children: [
                      SizedBox(width: 100,),
                      Image(image: AssetImage("assets/pattern.png"))
                    ],
                  ),),
                  Column(
                    children:   [
                    SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 45,),
                          Text("Bonjour ${_userName}!", style: TextStyle(height:0.9,color: Colors.white, fontFamily: "Poppins", fontSize: 21),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 45,),
                          Text("Tu veux jeter un oeil à ce livre?", style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(width:14),
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 270,
                              maxWidth: 190,
                            ),
                            child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: (){
                                  print("OK");
                                },
                                  child: Image(image: AssetImage("assets/Cover.png"),)),),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 25,),
                              centerizedText(text: _bookName, couleur: Colors.white, taillepolice: 23.0, police: "Poppins", largeur: 1.0),
                              centerizedText(text: "By"+_boonAuthor, couleur: Colors.white, taillepolice: 9.0, police: "Poppins", largeur: 1.0),
                              SizedBox(height: 50),

                               Row(
                                 children: [
                                   Icon(Icons.favorite, color: Colors.red, size: 30,),
                                   Text("${_liked} lecteurs ont aimé ce livre !", style: TextStyle(fontSize: 9.5, fontFamily: "Poppins", color: Colors.white),),
                                 ],
                               ),
                              SizedBox(height: 20,),

                              Container(
                                width: 170,
                                height: 50,
                                child: ElevatedButton(
                                  child: Text("Lire", style: TextStyle(fontFamily: "Poppins", color: Colors.black),),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        )
                                    ),
                                    onPressed: (){
                                    newPage(context, BookDetails());
                                    }
                                ),
                              )
                            ],

                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
               const SizedBox(
                  height: 10,
                ),
                Align(
                alignment: Alignment(-0.7, -1),
                  child: Text("Lu récemment", style: TextStyle(fontFamily: "Poppins", fontSize: 30),)),

                Container(
                  height: 200,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: _recentBook,
                  ),
                ),

              Align(
                  alignment: Alignment(-0.7, -1),
                  child: Text("Suggestions", style: TextStyle(fontFamily: "Poppins", fontSize: 30),)),
              const SizedBox(height: 20,),

              Container(
                height: 150,
                width: 320,
                decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade400), borderRadius: BorderRadius.circular(20)),

                child: Row(
                  children:
                  [
                   const SizedBox(width: 20,),
                    Align(
                      alignment: Alignment(-0.8, 0),
                        child: bookCard("assets/Cover3.png", radius: 10.0)),

                    Column(
                      children: [
                        SizedBox(height: 15,),
                       Row(
                         children: [
                           SizedBox(width: 10,),
                           Text(_suggestbookName, style: TextStyle(fontFamily: "Poppins", fontSize: 20),),
                            SizedBox(width: 20,),
                           InkWell(child: Icon(Icons.more_horiz)),
                         ],
                       ),
                       Row(
                         children: [
                           Text(
                                "by ${_suggestbookAuthor}", style: TextStyle(fontFamily: "Poppins", fontSize: 10),),
                         ],
                       ),
                     SizedBox(height: 50,),
                     Row(
                       children: [
                         Text("Catégorie :", style: TextStyle(fontFamily: "Poppins", fontSize: 10),),
                         SizedBox(width: 10,),
                         Container(
                           //height: 10,
                           width: 50,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent),

                           child: Center(child: Text(_bookCategory, style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 10),)),
                         ),
                       ],
                     ) ],
                    )
            ]
                ,)
              ),
                SizedBox(height: 40,),

              Container(
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade400), borderRadius: BorderRadius.circular(20)),

                  child: Row(
                    children:
                    [
                      SizedBox(width: 20,),
                      Align(
                          alignment: Alignment(-0.8, 0),
                          child: bookCard("assets/Cover4.png", radius: 10.0)),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text(_suggestbookName, style: TextStyle(fontFamily: "Poppins", fontSize: 20),),
                              SizedBox(width: 20,),

                              InkWell(child: Icon(Icons.more_horiz)),

                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "by ${_suggestbookAuthor}", style: TextStyle(fontFamily: "Poppins", fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 50,),
                          Row(
                            children: [
                              Text("Catégorie :", style: TextStyle(fontFamily: "Poppins", fontSize: 10),),
                              SizedBox(width: 10,),
                              Container(
                                //height: 10,
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent),

                                child: Center(child: Text("CCA", style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 10),)),
                              ),
                            ],
                          ) ],
                      )
                    ]
                    ,)
              ),
                ],
              ),
        ),
      ),
        );
  }
}

