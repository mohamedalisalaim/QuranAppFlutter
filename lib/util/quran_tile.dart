import 'package:flutter/material.dart';

class QuranTile extends StatelessWidget {
  final Function()? onPressed;
  final String surahNameAR;
  final String surahNameTR;
  final String typeAR;
  final int verses;
  final int index;
  final int words;
  final int letters;

  QuranTile(
      {super.key,
      required this.onPressed,
      required this.surahNameAR,
      required this.surahNameTR,
      required this.typeAR,
      required this.verses,
      required this.index,
      required this.words,
      required this.letters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 128, 88, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: MaterialButton(
          padding: const EdgeInsets.all(8),
          onPressed: onPressed,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                index.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              // nameAR , nameEN, nameTR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    surahNameTR,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    surahNameAR,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Amiri",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const Divider(
                thickness: 3,
                color: Colors.white,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "words: $words",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "letters: $letters",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text("verses: $verses",
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal)),
                  Text(
                    typeAR,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Amiri",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Color.fromRGBO(0, 128, 88, 1)