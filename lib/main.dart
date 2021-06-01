import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('shared-pref'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(margin: EdgeInsets.all(50), child: TextField()),
              ElevatedButton(onPressed: () {}, child: Text('simpan')),
              Text(''),
              ElevatedButton(onPressed: () {}, child: Text('tampilkan'))
            ],
          ),
        ),
      ),
    );
  }
}
