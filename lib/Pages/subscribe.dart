import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';
import 'package:tfsc/Pages/reward.dart';

class SubscribePage extends StatefulWidget {



  @override
  _SubscribePageState createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  Future<bool> _onBackPresses() {
    return  Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => RewardME()));

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: WillPopScope(
        onWillPop: _onBackPresses,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF517e59),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => RewardME())),
            ),
            title: Text("Back"),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage("images/bg.png"),
                fit: BoxFit.fitHeight,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text("Thank you for subscribe we will get back to you soon",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
