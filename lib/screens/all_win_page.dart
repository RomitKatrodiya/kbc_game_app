import 'package:flutter/material.dart';

import '../question_bank.dart';

class all_win_page extends StatefulWidget {
  const all_win_page({Key? key}) : super(key: key);

  @override
  State<all_win_page> createState() => _all_win_pageState();
}

class _all_win_pageState extends State<all_win_page> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: _height * 0.3,
              width: _width * 0.3,
              child: Image.asset("assets/images/11.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Congratulation",
              style: TextStyle(color: Colors.white38, fontSize: 22),
            ),
            const SizedBox(height: 50),
            const Text(
              "Game Over",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Global.index = 0;
                  Global.amt = 500;
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/", (route) => false);
                });
              },
              child: const Text("Restart"),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                primary: const Color(0xff1e1f23),
                onPrimary: const Color(0xffa8a8a9),
                textStyle: const TextStyle(fontSize: 22),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
