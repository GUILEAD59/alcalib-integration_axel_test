import 'dart:ui';

import 'package:alcalib/custom/customWidget.dart';
import 'package:alcalib/pages/login.dart';
import 'package:alcalib/custom/variables.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  @override
  State<BookDetails> createState() => _BookDetails();
}

class _BookDetails extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {

    double appBarRadius = 40;
    double iconSize = 30;
    double verticalDividerW = 20;

    // Those are the book details they will remove from here after
    // they will be set from the book model list
    double bookReadPercentage = 50;
    String bookImg = "Splas_asset.png";
    String bookName = "The Once upon the time";
    String bookAuthor = "Rumple";
    String bookPageCount = "600";
    String bookLanguage = "French";
    String bookDescription = "Les citations célèbres sur la confiance "
        "Qu'il s'agisse de confiance en soi, envers l\'autre, envers la vie..."
        "C'est un sentiment qui est loin d'être acquis ! Au contraire, la confiance"
        "est souvent mise à mal par l'expérience et c'est pourquoi, une c'"
        "'itation célèbre peut devenir un véritable leitmotiv au quotidien !"
        "Qu'il s'agisse de confiance en soi, envers l\'autre, envers la vie..."
        "C'est un sentiment qui est loin d'être acquis ! Au contraire, la confiance"
        "est souvent mise à mal par l'expérience et c'est pourquoi, une c'"
        "'itation célèbre peut devenir un véritable leitmotiv au quotidien !"
        "Qu'il s'agisse de confiance en soi, envers l\'autre, envers la vie..."
        "C'est un sentiment qui est loin d'être acquis ! Au contraire, la confiance"
        "est souvent mise à mal par l'expérience et c'est pourquoi, une c'"
        "'itation célèbre peut devenir un véritable leitmotiv au quotidien !"
    ;

    const titleTextStyle = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Cascadia Code");
    const subtitleTextStyle =
        TextStyle(color: Colors.white, fontFamily: "Cascadia Code");



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_circle_left),
          iconSize: iconSize,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
            iconSize: iconSize,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(children: [
              Container(
                  height: sizeH(context: context) * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(appBarRadius),
                          bottomRight: Radius.circular(appBarRadius)),
                      image: DecorationImage(
                        image: AssetImage("$imgSource/$bookImg"),
                        fit: BoxFit.fill
                      )),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(appBarRadius),
                            bottomRight: Radius.circular(appBarRadius)),
                      ),
                    ),
                  )),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_circle_left),
                    iconSize: iconSize,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz_rounded),
                    iconSize: iconSize,
                    color: Colors.white,
                  )
                ],
              ),*/
              Center(
                heightFactor: 1.2,
                child: Column(
                  children: [
                    Container(
                      height: sizeH(context: context) * 0.3,
                      width: sizeW(context: context) * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("$imgSource/$bookImg"),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bookName,
                      style: titleTextStyle,
                    ),
                    Text(
                      bookAuthor,
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Pages",
                                  style: titleTextStyle,
                                ),
                                Text(
                                  bookPageCount,
                                  style: subtitleTextStyle,
                                )
                              ],
                            ),
                            VerticalDivider(
                              width: verticalDividerW,
                              color: Colors.white,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Languages",
                                  style: titleTextStyle,
                                ),
                                Text(
                                  bookLanguage,
                                  style: subtitleTextStyle,
                                )
                              ],
                            ),
                            VerticalDivider(
                              width: verticalDividerW,
                              color: Colors.white,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Read",
                                  style: titleTextStyle,
                                ),
                                Text("$bookReadPercentage%",style: subtitleTextStyle,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    "Read your book",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bookDescription,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() => NavigatorPush(context: context, Page: LogInField()));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
              sizeW(context: context) * 0.5, sizeH(context: context) * 0.07),
          primary: primaryColor,
        ),
        child: const Text("Let's Read"),
      ),
    );
  }
}
