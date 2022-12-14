import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;

   _incrementfalse() {
    setState(() {
      _isLogin=false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/image/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          LoopAnimationBuilder<double>(
          tween: Tween(begin: .5, end: 1.0),
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          child: const Text('Find the best parties near you."',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400),
          ),
        ),




              SizedBox(
                height: 30,
              ),
              Container(
                  child:
                  Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 150,
              ),

              _isLogin?
              GestureDetector(
                onTap: (){
                  _incrementfalse();
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[900]
                  ),
                  child: Center(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ) ,
              )
             :
                  Center(
                    child: Row(
                      children: [
                        Expanded(child: GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red
                            ),
                            child: Center(
                                child: Text(
                                  "Google",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                )),
                          ),
                        ),),
                        SizedBox(width: 10,),
                        Expanded(child: GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                            ),
                            child: Center(
                                child: Text(
                                  "Facebook+",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                )),
                          ),
                        ),),


                      ],
                    ),
                  ),


              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}