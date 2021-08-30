import 'package:flutter/material.dart';
import 'package:tfsc/Pages/findpage.dart';
import 'package:tfsc/Pages/orders.dart';
import 'package:tfsc/Pages/reward.dart';
import 'package:tfsc/Pages/tradinghours.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _labeClick({String image}) {
    return Image(
      image: AssetImage(image),
    );
  }

  Future<bool> _onBackPresses() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Do you really want to exit the app"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text("No"),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPresses,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage("images/1.png"),
                fit: BoxFit.fitHeight,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrdersPage()));
                    },
                    child: _labeClick(image: "images/button_orders.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => RewardME()));
                    },
                    child: _labeClick(image: "images/button_rewards.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TradingPage()));
                    },
                    child: _labeClick(image: "images/button_hours.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FindmePage()));
                    },
                    child: _labeClick(image: "images/button_find.png"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
