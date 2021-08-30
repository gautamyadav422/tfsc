import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';
import 'package:tfsc/Pages/subscribe.dart';

class RewardME extends StatefulWidget {
  @override
  _RewardMEState createState() => _RewardMEState();
}

class _RewardMEState extends State<RewardME> {
  final _text = TextEditingController();
  bool _validate = false;
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
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
                image: AssetImage("images/a1.png"),
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Subscribe to our mailing list to know about our special offers",
                        style: TextStyle(
                            color: Color(0xFF054715),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "* indicates required",
                        style: TextStyle(
                            color: Color(0xFF054715),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "* Email Address *",
                        style: TextStyle(
                            color: Color(0xFF054715),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _text,
                        decoration: InputDecoration(

                          errorText: _validate
                              ? 'Please enter your email address'
                              : null,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF054715), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF054715), width: 3.0),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("First Name",
                          style: TextStyle(
                              color: Color(0xFF054715),
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF054715), width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF054715), width: 3.0),
                            ),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Last Name",
                          style: TextStyle(
                              color: Color(0xFF054715),
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF054715), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF054715), width: 3.0),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {

                          setState(() {
                            _text.text.isEmpty
                                ? _validate = true
                                : Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => SubscribePage()));;
                          });

                        },
                        child: Container(
                          height: 40,
                          width: 800,
                          decoration: BoxDecoration(
                            color: Color(0xFFeeece6),
                            borderRadius: BorderRadius.circular(18),
                            border:
                                Border.all(color: Color(0xFF054715), width: 2),
                          ),
                          child: Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                  color: Color(0xFF054715),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
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
