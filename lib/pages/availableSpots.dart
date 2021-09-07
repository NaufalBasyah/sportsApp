import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class availableSpotsPage extends StatefulWidget {
  const availableSpotsPage({Key? key}) : super(key: key);

  @override
  _availableSpotsPageState createState() => _availableSpotsPageState();
}

class _availableSpotsPageState extends State<availableSpotsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            backgroundColor: Colors.green[800],
            title: Text("Available Venue(s) Near You")
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
