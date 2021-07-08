import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newEventForm extends StatefulWidget {
  const newEventForm({Key? key}) : super(key: key);

  @override
  _newEventFormState createState() => _newEventFormState();
}

class _newEventFormState extends State<newEventForm> {
  late List<bool> isSelected;
  @override
  void initState() {
    isSelected = [true, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text("Sport:"),
                SizedBox(width: size.width*0.03),
                ToggleButtons(children:<Widget> [Image.asset("images/bball-1.png",scale:5),Image.asset("images/badminton-1.png",scale:5),Image.asset("images/soccer.png",scale:5)],
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == index;
                        }
                      });
                    },isSelected: isSelected)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text("Sport:"),
                SizedBox(width: size.width*0.03),

              ],
            )

          ]
        )
      );
  }
}
