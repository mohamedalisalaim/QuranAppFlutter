import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SurahPage extends StatelessWidget {
  final data;
  SurahPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 246, 239, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Color.fromRGBO(0, 128, 88, 1),
          ),
        ),
        elevation: 0,
        title: Text(
          data["name"],
          style: const TextStyle(
            color: Color.fromRGBO(0, 128, 88, 1),
            fontFamily: "Amiri",
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
              style: TextStyle(
                color: Color.fromRGBO(0, 128, 88, 1),
                fontFamily: "Amiri",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              data["ar"],
              textAlign: TextAlign.right,
              softWrap: true,
              style: const TextStyle(
                height: 2.5,
                color: Color.fromRGBO(0, 128, 88, 1),
                fontFamily: "Amiri",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("")
          ],
        ),
      ),
    );
  }
}
