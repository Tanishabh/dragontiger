import 'package:flutter/material.dart';

import '../../../Updown7/UI/constant/images.dart';
import 'Loginpage.dart';

class Numbertwo extends StatefulWidget {
  const Numbertwo({super.key});

  @override
  State<Numbertwo> createState() => _NumbertwoState();
}

class _NumbertwoState extends State<Numbertwo> {
  bool?check1= false,
  check2 = true,
  check3 = false;
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = heights*2.1;

    return Scaffold(
      // backgroundColor: Colors.indigo[900],
      body: SingleChildScrollView(child:Container(
        height: heights,
        width: widths,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssetsU.backgroundLudobg),fit: BoxFit.cover)),
        child: Column(

          children: [
            Image.asset(AppAssetsU.backgroundAppIcon, height: heights/4,),
            SizedBox(
              width: heights/2,
              height: heights/9,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights/60,),
                      Icon(Icons.phone,color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(fontSize: heights/50, color: Colors.white),
                    fillColor: Colors.grey,
                  filled: true
                ),

                ),
            ),
            SizedBox(
              width: heights/2,
              height: heights/9,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights/60,),
                      Icon(Icons.phone,color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: heights/50, color: Colors.white),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white,),
                    fillColor: Colors.grey,
                    filled: true
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: heights/9,
              width: heights/2,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights/60,),
                      Icon(Icons.phone,color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(fontSize: heights/50, color: Colors.white),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white,),
                    fillColor: Colors.grey,
                    filled: true
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: heights/9,
              width: heights/2,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights/60,),
                      Icon(Icons.phone,color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(fontSize: heights/50, color: Colors.white),
                    fillColor: Colors.grey,
                    filled: true
                ),

              ),
            ),
            SizedBox(
              height: heights/9,
              width: heights/2,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: heights/60,),
                      Icon(Icons.phone,color: Colors.white),
                      Image.asset(AppAssetsU.imageTextfiled)
                    ],
                  ),
                  hintText: "Enter Refer Code(Optional)",
                  hintStyle: TextStyle(fontSize: heights/50, color: Colors.white),
                    fillColor: Colors.grey,
                    filled: true
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: heights/20),
              child: Row(
                children: [
                  Checkbox(
                      value: check1,
                      onChanged: (bool?value)
                      {
                        setState(() {
                          check1 = value;
                        });
                      }
                  ),
                  Text("I have read and agreed PRIVACY POLICY \n and USER AGREEMENT", style: TextStyle(fontSize: heights/50, color: Colors.white),)
                ],
              ),
            ),
            TextButton(
                onPressed: (){
                },
                child: Image.asset(AppAssetsU.imageRegister,height: heights/15)
            ),
            Row(
              children: [
                SizedBox(width: heights/10),
                Text("Have You Already an Account?", style: TextStyle(fontSize: heights/50, color: Colors.white)),
                SizedBox(width: heights/55),
                InkWell(
                  child: Text("SignIn", style: TextStyle(fontSize: heights/50, color: Colors.yellowAccent),),
                  onTap: (){
                    Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context) =>numberone())
                    );
                  },
                )
              ],
            )
          ],
        ),
      )
      )

    );
  }
}

