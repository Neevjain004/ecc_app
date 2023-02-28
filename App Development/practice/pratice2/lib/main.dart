import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentStep = 0;
  List<Step> getSteps() => [
     Step(
      title:const Text('Hello'),
      content:const Text('Step 1'),
      isActive: currentStep >= 0
       ),
        Step(
      title: const Text('World'),
      content:const Text('Step 2'),
      isActive: currentStep >= 1
       ),
       Step(
      title:const Text('Hello'),
      content:const Text('Step 3'),
      isActive: currentStep >= 2
       ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Stepper(steps: getSteps(),
        currentStep: currentStep,
        ),
        

      )) ,
    );
  }
}
