import 'package:flutter/material.dart';
import 'package:tfsc/MyHomePage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindmePage extends StatefulWidget {
  @override
  _FindmePageState createState() => _FindmePageState();
}

class _FindmePageState extends State<FindmePage> {
  static const _initialcameraPosition = CameraPosition(
      target: LatLng(
        19.030302011066894,
        72.86735021591565,
      ),
      zoom: 11.5);
  GoogleMapController _googleMapController;
  @override
  void dispose() {
    _googleMapController.dispose();
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
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage())),
              ),
              title: Text("Back"),
            ),
            body: GoogleMap(
              initialCameraPosition: _initialcameraPosition,
              onMapCreated: (controller) => _googleMapController = controller,
            )),
      ),
    );
  }
}
