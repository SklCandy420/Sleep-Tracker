import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Sleep Tacker',
       theme: ThemeData.dark(
       ),
       home: MyHomepage(title:'Sleep Tracker'),
     );
   }
 }

 class MyHomepage extends StatefulWidget {
  MyHomepage({Key key,this.title}):super(key:key);

  final String title;

   @override
   _MyHomepageState createState() => _MyHomepageState();
 }

 class _MyHomepageState extends State<MyHomepage> {

  TextEditingController _c;
  double _opacity =0.0;
  var cycles = {'firstCycle':'','secondCycle':'', 'thirdCycle':'', 'forthCycle':'', 'fifthCycle':'', 'sixthCycle':''};


  @override
  void initState() {

    _c = new TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    _c?.dispose();
    super.dispose();
  }
  @override
   Widget build(BuildContext context) {

    cyclesMeasure() {

      DateTime now = DateTime.now();

      var first = now.add(new Duration(minutes: 90 + 14));
      cycles['firstCycle'] = first.toIso8601String().substring(11, 16);

      var second = now.add(new Duration(minutes: 180 + 14));
      cycles['secondCycle'] = second.toIso8601String().substring(11, 16);

      var third = now.add(new Duration(minutes: 270 + 14));
      cycles['thirdCycle'] = third.toIso8601String().substring(11, 16);

      var forth = now.add(new Duration(minutes: 360 + 14));
      cycles['forthCycle'] = forth.toIso8601String().substring(11, 16);

      var fifth = now.add(new Duration(minutes: 450 + 14));
      cycles['fifthCycle'] = fifth.toIso8601String().substring(11, 16);

      var sixth = now.add(new Duration(minutes: 540 + 14));
      cycles['sixthCycle'] = sixth.toIso8601String().substring(11, 16);

    }


  }
 }


