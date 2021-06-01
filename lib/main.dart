import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: '');
  void save() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('input', controller.text);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('input') ?? 'no data';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('shared-pref'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(50),
                  child: TextField(
                    controller: controller,
                  )),
              ElevatedButton(
                  onPressed: () {
                    save();
                  },
                  child: Text('simpan')),
              Text(controller.text),
              ElevatedButton(
                  onPressed: () {
                    getNama().then((s) => controller.text = s);
                    setState(() {});
                  },
                  child: Text('tampilkan'))
            ],
          ),
        ),
      ),
    );
  }
}
