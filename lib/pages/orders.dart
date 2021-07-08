import 'package:flutter/material.dart';
import 'history_appointment.dart';
import 'upcoming_appointment.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final List<Widget> pages = [upcomingAppointment(),historyAppointment()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Scheduled"),
            bottom: TabBar(tabs: <Widget>[
              Tab(text: "Upcoming"),
              Tab(text: "History")
            ])
          ),
          body: TabBarView(
              children: pages,
          )
        ));
  }
}
