import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color.fromRGBO(0, 128, 88, 1),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Please Wait!",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(248, 246, 239, 1),
    );
  }
}
