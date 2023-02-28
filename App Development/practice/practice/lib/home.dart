import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title:const Text('Hello World'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black54,
        color: Colors.pinkAccent,
        animationDuration: const Duration(milliseconds: 300),
         items: const [
          Icon(Icons.home_filled),
          Icon(Icons.access_alarm),
          Icon(Icons.ac_unit),
          Icon(Icons.add_task_sharp),
         ],

       ),
    );
  }
}