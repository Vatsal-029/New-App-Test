import 'package:flutter/material.dart';
import 'package:petophila/welcome.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Petophila();
  }
}

class Petophila extends StatefulWidget {
  @override
  _PetophilaState createState() => _PetophilaState();
}

class _PetophilaState extends State<Petophila> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Welcome(),
    );
  }
}