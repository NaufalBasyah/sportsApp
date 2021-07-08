import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class nearMePage extends StatefulWidget {
  const nearMePage({Key? key}) : super(key: key);

  @override
  _nearMePageState createState() => _nearMePageState();
}

class _nearMePageState extends State<nearMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Sport Venue(s) Near You")
      ),
      body: GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(3.597031, 98.678513), zoom: 12)),
    );
  }
}
