import 'package:flutter/material.dart';
class HeaderItem extends StatelessWidget {
  const HeaderItem({ Key? key, required this.images, required this.title, required this.textcolor})
      : super(key: key);
  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: textcolor ?? Colors.white),
          )
        ],
      ),
    );
  }
}
class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Container(
          height: 25,
          child: Image.asset('images/logo-demo.png', scale: 2),
        ),
        actions: <Widget>[
          Image.asset(
            'images/notif-non.png',
            scale: 3.5,
          ),
        ],
        elevation: 1.0,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset('images/logo-demo.png', scale: 4),
                    Text(
                      'AUD 20.00',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HeaderItem(
                      images: 'images/pay-2.png',
                      title: 'Pay',
                      textcolor: (Colors.black)!,
                    ),
                    HeaderItem(
                      images: 'images/promo-2.png',
                      title: 'Promo',
                      textcolor: (Colors.black)!
                    ),
                    HeaderItem(
                      images: 'images/topup-2.png',
                      title: 'Add Card',
                      textcolor: (Colors.black)!
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                HeaderItem(
                  images: 'images/soccer.png',
                  title: 'Soccer',
                  textcolor: (Colors.grey[600])!,
                ),
                HeaderItem(
                  images: 'images/badminton-1.png',
                  title: 'Badminton',
                  textcolor: (Colors.grey[600])!,
                ),
                HeaderItem(
                    images: 'images/bball-1.png',
                    title: 'Basketball',
                    textcolor: (Colors.black)!
                ),
                HeaderItem(
                  images: 'images/more-1.png',
                  title: 'MORE',
                  textcolor: (Colors.grey[600])!,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/add.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
            ),


          ],
        ),
      ),
    );
  }
}


