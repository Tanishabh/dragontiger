
import 'dart:convert';

import 'package:dragontiger/Updown7/UI/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Gamepage.dart';
import 'Register.dart';
import 'package:http/http.dart' as http;

class numberone extends StatefulWidget {
  const numberone({super.key});

  @override
  State<numberone> createState() => _numberoneState();
}

class _numberoneState extends State<numberone> {
  final TextEditingController phoneCon=TextEditingController();
  final TextEditingController passCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: heights,
        width: widths,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssetsU.backgroundLudobg),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Image.asset(AppAssetsU.backgroundAppIcon),
            Padding(
              padding: EdgeInsets.all(heights / 50),
              child: TextField(
                controller: phoneCon,
                style: TextStyle(fontSize: heights / 50, color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights / 60),
                      Icon(Icons.phone, color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: "Phone Number",
                  hintStyle:
                      TextStyle(fontSize: heights / 50, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(heights / 50),
              child: TextField(
                controller: passCon,
                style: TextStyle(fontSize: heights / 50, color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: "Enter password",
                  hintStyle:
                      TextStyle(fontSize: heights / 50, color: Colors.white),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: heights / 60,
                      ),
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(heights / 50),
              child: Row(
                children: [
                  InkWell(
                    child: Text("Create New Account",
                        style: TextStyle(
                            fontSize: heights / 50, color: Colors.white)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Numbertwo()));
                    },
                  ),
                  Spacer(),
                  InkWell(
                    child: Text("Forget password?",
                        style: TextStyle(
                            fontSize: heights / 50, color: Colors.white)),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                              // title: Text("Forget password", style: TextStyle(fontSize: heights/30, color: Colors.white),),
                              backgroundColor: Colors.indigo[900],
                              insetPadding: EdgeInsets.zero,
                              contentPadding: EdgeInsets.zero,
                              content: Builder(builder: (context) {
                                final heights =
                                    MediaQuery.of(context).size.height;
                                final widths = heights / 2 * 1;
                                return Container(
                                  height: heights / 2.5,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            child: InkWell(
                                                child: Image.asset(
                                                    AppAssetsU.buttonsBtnClose2,
                                                    height: heights / 14),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                })),
                                      ),
                                      Text(
                                        "Forget password",
                                        style: TextStyle(
                                            fontSize: heights / 30,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: heights / 20,
                                      ),
                                      TextField(
                                        style: TextStyle(
                                            fontSize: heights / 50,
                                            color: Colors.white),
                                        cursorColor: Colors.white,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          prefixIcon: Row(
                                            children: [
                                              SizedBox(
                                                width: heights / 60,
                                              ),
                                              Icon(Icons.phone,
                                                  color: Colors.white),
                                              Image.asset(
                                                  AppAssetsU.imageTextfiled)
                                            ],
                                          ),
                                          hintText: "+91 Mobile No.",
                                          hintStyle: TextStyle(
                                              fontSize: heights / 50,
                                              color: Colors.white),
                                        ),
                                        obscureText: false,
                                      ),
                                      SizedBox(height: heights / 30),
                                      TextButton(
                                          onPressed: () {},
                                          child: Image.asset(
                                              AppAssetsU
                                                  .imageForgetRemovebgPreview,
                                              height: heights / 15)),
                                    ],
                                  ),
                                );
                              })));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: heights / 20),
            TextButton(
                onPressed: () {
                  // login(phoneCon.text,passCon.text);
                  Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => Numberthree()));
                },
                child: Image.asset(AppAssetsU.imageSignInRemovebgPreview,
                    height: heights / 15))
          ],
        ),
      ),
    ));
  }

  //  login(String phoneCon, String passCon) async {
  //   var uri = "https://kinggame.in/admin/index.php/Mobile_app/user_login";
  //   print(uri);
  //   final res = await http.post(
  //     Uri.parse(uri),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body:
  //         jsonEncode(<String, String>{"username": phoneCon, "password": passCon}),
  //   );
  //   var decodedata = jsonDecode(res.body);
  //   print(decodedata);
  //   if (decodedata['error'] == "200") {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => Numberthree()));
  //   } else {
  //     print(decodedata['msg']);
  //   }
  // }

}
