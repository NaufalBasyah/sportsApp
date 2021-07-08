import 'package:flutter/material.dart';

class upcomingAppointment extends StatefulWidget {
  const upcomingAppointment({Key? key}) : super(key: key);

  @override
  _upcomingAppointmentState createState() => _upcomingAppointmentState();
}

class _upcomingAppointmentState extends State<upcomingAppointment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          InkWell(
              onTap: (){},
              child:Container(
                  height: size.height*0.2,
                  width: size.width*0.98,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      color: Colors.green[400],
                      elevation: 8,
                      child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Image.asset('images/bball-1.png',scale: 5),
                              title: const Text('Day, XX July 2021 @ XX:XX - XX:XX'),
                              subtitle: Text(
                                'More info click here!',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            SizedBox(
                                height: 5
                            )
                          ]
                      )

                  )

              )
          ),
          InkWell(
              onTap: (){},
              child:Container(
                  height: size.height*0.2,
                  width: size.width*0.98,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      color: Colors.green[400],
                      elevation: 8,
                      child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Image.asset('images/badminton-1.png',scale: 5),
                              title: const Text('Day, XX July 2021 @ XX:XX - XX:XX'),
                              subtitle: Text(
                                'More info click here!',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            SizedBox(
                                height: 5
                            )
                          ]
                      )

                  )

              )
          ),
          InkWell(
              onTap: (){},
              child:Container(
                  height: size.height*0.2,
                  width: size.width*0.98,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      color: Colors.green[400],
                      elevation: 8,
                      child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Image.asset('images/badminton-1.png',scale: 5),
                              title: const Text('Day, XX July 2021 @ XX:XX - XX:XX'),
                              subtitle: Text(
                                'More info click here!',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            SizedBox(
                                height: 5
                            )
                          ]
                      )

                  )

              )
          )
        ]
      )
    );
  }
}
