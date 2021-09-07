import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_test2/pages/availableSpots.dart';
import '/pages/near_me.dart';

class newEventForm extends StatefulWidget {
  const newEventForm({Key? key}) : super(key: key);

  @override
  _newEventFormState createState() => _newEventFormState();
}

class _newEventFormState extends State<newEventForm> {
  late List<bool> isSelected;
  String dropDownValue = "2" ;
  String dropDownValue2 = "60" ;
  @override
  void initState() {
    isSelected = [true, false, false];
    _dateTime = DateTime.now();
    super.initState();
  }
  late DateTime _dateTime;
  TimeOfDay _time = TimeOfDay.now();
  late TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async{
    picked = (await showTimePicker(
      context: context,
      initialTime: _time,
    ))!;
    setState((){
      _time = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Center(
        child:Container(
         alignment: Alignment.center,
         height: size.height*0.67,
         width: size.width*0.8,
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>[
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:<Widget>[
                   Text("Sport     :  ",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.black
                       )
                   ),
                   SizedBox(width: size.width*0.03),
                   ToggleButtons(children:<Widget> [Image.asset("images/bball-1.png",scale:5),Image.asset("images/badminton-1.png",scale:5),Image.asset("images/soccer.png",scale:5)],
                       onPressed: (int index) {
                         setState(() {
                           for (int i = 0; i < isSelected.length; i++) {
                             isSelected[i] = i == index;
                           }
                         });
                       },selectedColor: Colors.green[800]
                       ,highlightColor: Colors.green[800],
                       fillColor: Colors.green[200]
                       ,
                       isSelected: isSelected)
                 ],
               ),
               SizedBox(height: size.height*0.02),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:<Widget>[
                   Text("Qty of People(s)     :  ",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.black
                       )
                   ),
                   SizedBox(width: size.width*0.03),
                   DropdownButton<String>(
                     value: dropDownValue,
                     icon: const Icon(Icons.arrow_downward),
                     iconSize: 24,
                     elevation: 16,
                     style: const TextStyle(color: Colors.black),
                     underline: Container(
                       height: 2,
                       color: Colors.green[800],
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
                         child: Text(value,
                             style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black
                             )),
                       );
                     }).toList(),
                   )

                 ],
               ),
               SizedBox(height: size.height*0.02),
               Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget> [
                     Text("Date     :  ",
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.black
                         )
                     ),
                     SizedBox(width: size.width*0.17),
                     Column(
                         children: <Widget> [
                           Text(_dateTime == null ? 'No Date Set':"${_dateTime.toLocal()}".split(' ')[0],
                               style: TextStyle(
                                   fontSize: 18,
                                   color: Colors.black
                               )),
                           ElevatedButton(
                               style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green[800]!)),
                               child: Text('Pick a Date'),
                               onPressed: () {
                                 showDatePicker(
                                     context: context,
                                     initialDate: DateTime.now(),
                                     firstDate: DateTime(2021),
                                     lastDate: DateTime(2023)
                                 ).then((date){
                                   setState((){
                                     _dateTime = date!;
                                   });
                                 });
                               }
                           )
                         ]
                     )
                   ]
               ),
               SizedBox(height: size.height*0.02),
               Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget> [
                     Text("Start Time    :  ",
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.black
                         )
                     ),
                     SizedBox(width: size.width*0.03),
                     Column(
                         children: <Widget> [
                           Text(_dateTime == null ? 'No Time Set':_time.format(context).toString(),style: TextStyle(
                               fontSize: 18,
                               color: Colors.black
                           )),
                           ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green[800]!)),
                               child: Text('Pick a Start Time'),
                               onPressed: () {
                                 selectTime(context);
                               }
                           )
                         ]
                     )
                   ]
               ),
               SizedBox(width: size.width*0.03),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:<Widget>[
                   Text("Duration(in mins)    :  ",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.black
                       )
                   ),
                   SizedBox(width: size.width*0.03),
                   DropdownButton<String>(
                     value: dropDownValue2,
                     icon: const Icon(Icons.arrow_downward),
                     iconSize: 24,
                     elevation: 16,
                     style: const TextStyle(color: Colors.black),
                     underline: Container(
                       height: 2,
                       color: Colors.green[800],
                     ),
                     onChanged: (String? newValue) {
                       setState(() {
                         dropDownValue2 = newValue!;
                       });
                     },
                     items: <String>["60", "90", "120", "150","180"]
                         .map<DropdownMenuItem<String>>((String value) {
                       return DropdownMenuItem<String>(
                         value: value,
                         child: Text(value,
                             style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black
                             )),
                       );
                     }).toList(),
                   )

                 ],
               ),
               SizedBox(height: size.height*0.05),
               ElevatedButton(
                   style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green[800]!),
                   fixedSize: MaterialStateProperty.all<Size>(Size(200,50))
                   ),
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => nearMePage()),
                     );
                   }, child: Text('Make Appointment',style: TextStyle(
                   fontSize: 18,
                   color: Colors.white
               ),
               ))


             ]
         )
        )
      );
  }
}
