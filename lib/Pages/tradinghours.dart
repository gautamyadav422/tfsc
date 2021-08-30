import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';

class TradingPage extends StatefulWidget {
  @override
  _TradingPageState createState() => _TradingPageState();
}

class _TradingPageState extends State<TradingPage> {
  Widget _labelText({String labe}) {
    return Text(
      labe,
      style: TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
  Future<bool> _onBackPresses() {
    return  Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage()));

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
                  context, MaterialPageRoute(builder: (context) => MyHomePage())),
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
              Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  _labelText(labe: "Trading Hours"),
                  SizedBox(
                    height: 60,
                  ),
                  _labelText(labe: "Monday to Friday"),
                  _labelText(labe: "from 7am to 6pm"),
                  SizedBox(
                    height: 60,
                  ),
                  _labelText(labe: "Saturday"),
                  _labelText(labe: "from 7am to 5pm"),
                  SizedBox(
                    height: 60,
                  ),
                  _labelText(labe: "Sunday"),
                  _labelText(labe: "from 8am to 4pm"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
