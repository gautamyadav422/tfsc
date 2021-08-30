import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    "We will Working on this page shortly going to take the Orders, Thank you for your patience!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
