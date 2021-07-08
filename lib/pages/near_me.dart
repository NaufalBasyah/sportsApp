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
      body: Stack(
        children:<Widget>[
          GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(3.597031, 98.678513), zoom: 12)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Here',
                  filled: true,
                  fillColor: Colors.white,
                ),
              )
            ]
          )
        ]
      )
    );
  }
}
