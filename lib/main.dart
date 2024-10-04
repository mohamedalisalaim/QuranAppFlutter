import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/pages/loading_page.dart';
import 'package:quran_app/pages/quran_surhas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data;

  Future<void> loadData() async {
    final String jsonString =
        await rootBundle.loadString("lib/assets/Quran.json");
    final jsonData = jsonDecode(jsonString);
    setState(() {
      data = jsonData;
    });
  }

  bool checkData() {
    return data == null;
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quran App",
      debugShowCheckedModeBanner: false,
      home: checkData() ? LoadingPage() : QuranSurhasPage(data: data),
    );
  }
}
