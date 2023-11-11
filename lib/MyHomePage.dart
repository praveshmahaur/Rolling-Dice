
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  late AnimationController _controller;
  late CurvedAnimation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  animate(){
    _controller = AnimationController(duration:const Duration(seconds: 1), vsync: this);
    _controller.forward();
    var animation=CurvedAnimation(parent: _controller, curve:Curves.bounceInOut);
    _controller.addListener(() {
      setState(() {

      });
      print(_controller.value);});
    animation.addStatusListener((status) {if
    (status==AnimationStatus.completed){
      setState(() {
        leftDiceNumber=Random().nextInt(6)+1;
        rightDiceNumber=Random().nextInt(6)+1;

      });
      print("Completed");
      _controller.reverse();

    }
    });
  }



  void roll(){
    _controller.forward();

  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text("Rolling Dice")
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(onDoubleTap: roll,
                            child: Image.asset("assets/images/dice-png-$leftDiceNumber.png",height:200- _controller.value*200,)),
                      )),
                  Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onDoubleTap: roll,
                            child: Image.asset("assets/images/dice-png-$rightDiceNumber.png",height:200- _controller.value*200,)),
                      ))
                ],
              ),
              ElevatedButton(onPressed:(){roll();}, child:Text("Roll"))
            ],
          ),
        ),
      ),

    );



  }
}
