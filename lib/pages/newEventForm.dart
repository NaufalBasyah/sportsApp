import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newEventForm extends StatefulWidget {
  const newEventForm({Key? key}) : super(key: key);

  @override
  _newEventFormState createState() => _newEventFormState();
}

class _newEventFormState extends State<newEventForm> {
  late List<bool> isSelected;
  String dropDownValue = "2" ;
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
                Text("Persons:"),
                SizedBox(width: size.width*0.03),
                DropdownButton<String>(
                  value: dropDownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                  items: <String>["2", "3", "4", "5","6","7","8","9","10"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )

              ],
            )

          ]
        )
      );
  }
}
