import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Container centerizedText({String text = "Text", position, largeur = 0.0, hauteur = 0.0, String police = "Roboto", couleur, taillepolice})
{
  return
    Container(
      padding: EdgeInsets.symmetric(vertical: hauteur, horizontal: largeur),
      child: Text(text,
          textAlign: position,
          style: TextStyle(height:1.5, fontSize: taillepolice, fontFamily: police, color: couleur)),);
}


Future newPage(BuildContext context, Widget page) async {//Changer de page
  await Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}


ClipRRect bookCard(assetsImage, {double radius = 20})
{
  return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
          onTap: (){
            print("OK");
          },
          child: Image(image: AssetImage(assetsImage),)));
}



Text text({text, double fontSize = 10, fontFamily, color})
{
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: fontFamily.toString(),
    ),
  );
}

Future backToPage(BuildContext context) async {
  Navigator.pop(context);
}


Container line({double width = 5, required color})
{
  return Container(
    width: width,
    decoration: BoxDecoration(border: Border.all(color: color)),
  );
}



Container champ({String text = "",  largeur, hauteur, data})//Le hint text,  largeur, longueur
{
  return Container(
      width: largeur,
      height: hauteur
      ,child: TextField(
    controller: data,

  ));
}




