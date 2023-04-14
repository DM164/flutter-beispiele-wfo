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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > colors.length - 1) {
        _counter = 0;
      }
    });
  }

  List<MaterialColor> colors = [
    Colors.purple,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.orange,
    Colors.red,
  ];

  List<String> strings = [
    "Click me UwU",
    "SUS",
    "ok pls stop",
    "Man. stop. pls.",
    "I SAID STOP",
    "Ok fine I warned you",
    "We're no strangers to loooove...",
    "You know the rules and so do IIIII",
    "Error 69420, sins_johnny.exe stopped working",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colors[_counter],
      child: Center(
        child: TextButton(
            child: Text(strings[_counter],
                style: TextStyle(color: Colors.white, fontSize: 32)),
            onPressed: () => {
                  _incrementCounter(),
                }),
      ),
    );
  }
}
