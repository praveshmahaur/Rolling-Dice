library textfield48;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget{
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),

        body: Center(child: Container(
            width: 350 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Enter Email here..." ,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        )
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 2
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                        )
                    ),
                    suffixText: "Username exits",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye,color:Colors.green),
                      onPressed: (){

                      },
                    ),
                    prefixIcon:Icon( Icons.phone,color:Colors.black),

                  ),
                ),
                Container(height: 11,),
                TextField(
                  controller: passText ,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Enter password here..",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )
                      )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;

                  print("Email: $uEmail, Pass:$uPass");

                }, child: Text("Login"))
              ],
            )))



    );
  }

}
