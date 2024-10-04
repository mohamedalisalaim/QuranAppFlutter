import 'package:flutter/material.dart';
import 'package:quran_app/pages/surah.dart';
import '../util/quran_tile.dart';

class QuranSurhasPage extends StatelessWidget {
  final data;

  QuranSurhasPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 246, 239, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Quran App",
          style: TextStyle(
            color: Color.fromRGBO(0, 128, 88, 1),
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: data?.length,
        itemBuilder: (BuildContext context, int index) {
          return QuranTile(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahPage(data: data[index]),
                  ),
                );
              },
              surahNameAR: data[index]["name"],
              surahNameTR: data[index]["name_translation"],
              typeAR: data[index]["type"],
              verses: data[index]["verses"],
              index: (index + 1),
              words: data[index]["words"],
              letters: data[index]["letters"]);
        },
      ),
    );
  }
}
