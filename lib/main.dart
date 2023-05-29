import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Spalsh Screen",
      home: SplashScreen(),
    )

  );
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }

}
class SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>NextScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Center(
        child: Image.asset('assets/dipesh.png',width:100.0,height: 100.0 ,),
      ),
    );
  }

}
class NextScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text("Next Screen",style: TextStyle(fontSize: 40.0),),
      ),
    );
  }
  
}

