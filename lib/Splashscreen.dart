import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';

class SplashScreen extends StatefulWidget {
 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

    _navigatetohome()async{
      await Future.delayed(Duration(seconds: 3),(){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

    }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Image(image: AssetImage("images/1.png"),fit: BoxFit.fill,));
  }
}