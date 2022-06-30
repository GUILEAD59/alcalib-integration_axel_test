import 'package:alcalib/methods/methods.dart';
import 'package:alcalib/page/navbar.dart';
import 'package:flutter/material.dart';

import '../page/home.dart';

class LogInField extends StatefulWidget {
  @override
  State<LogInField> createState() => _LogInField();
}

class _LogInField extends State<LogInField> {
  @override
  String passwordController = "";
  bool passwordIsvisible = false;
  TextEditingController emailController = TextEditingController();

  Widget build(BuildContext context) {
    String imgSource = "assets";
    final primaryColor = Color.fromRGBO(120, 4, 198, 1);
    final sizeW = MediaQuery.of(context).size.width;
    final sizeH = MediaQuery.of(context).size.height;
    final textFieldRadius = BorderRadius.circular(8);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
         icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.zero,
              height: sizeH * 0.5,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("$imgSource/Login_asset2.png"),
                      fit: BoxFit.fill)),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: textFieldRadius,
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: textFieldRadius,
                          borderSide: BorderSide(
                            color: primaryColor,
                          )),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: primaryColor,
                      ),
                      suffixIcon: emailController.text.isEmpty
                          ? Container(width: 0)
                          : IconButton(
                              icon: Icon(
                                Icons.close,
                                color: primaryColor,
                              ),
                              onPressed: () => emailController.clear(),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(

                    onChanged: (value) =>
                        setState(() => this.passwordController = value),
                    onSubmitted: (value) =>
                        setState(() => this.passwordController = value),
                    obscureText: !passwordIsvisible,
                    decoration: InputDecoration(
                      hintText: "Mot de passe",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: textFieldRadius,
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: textFieldRadius,
                          borderSide: BorderSide(
                            color: primaryColor,
                          )),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: primaryColor,
                      ),
                      suffixIcon: IconButton(
                          //Methode for Hide and show password
                          icon: !passwordIsvisible
                              ? Icon(
                                  Icons.visibility_off,
                                  color: primaryColor,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: primaryColor,
                                ),
                          onPressed: () => setState(
                                () => passwordIsvisible = !passwordIsvisible,
                              )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                newPage(context, navbar());
              },
              child: const Text("Login"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(sizeW * 0.8, sizeH * 0.07),
                primary: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
