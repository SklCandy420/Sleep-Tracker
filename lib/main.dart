import 'package:flutter/material.dart';

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
   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }


