import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/orders.dart';
import 'pages/chats.dart';
import 'pages/near_me.dart';
import 'pages/account.dart';
import '/pages/stats_screen.dart';



class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _dashboardPageState createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  int i = 0;
  final List<Widget> pages = [Homes(), Orders(), Chats(), nearMePage(), StatsScreen()];
  void _incrementTab(index) {
    setState(() {
      i = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green[800],
          currentIndex: i,
          onTap: (index) {
            _incrementTab(index);
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home-non.png', scale: 2.5),
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders-non.png', scale: 2.5),
                ),
                title: Text('Scheduled')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/historychat-1.png', scale: 1.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/historychat-1-non.png', scale: 1.5),
                ),
                title: Text('New Event')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/location-1.png', scale: 4),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/location-1-non.png', scale: 4),
                ),
                title: Text('Near Me')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account-non.png', scale: 2.5),
                ),
                title: Text('Account'))
          ]),
    );
  }
}
