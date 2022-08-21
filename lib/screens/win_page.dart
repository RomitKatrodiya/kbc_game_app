import 'package:flutter/material.dart';

import '../question_bank.dart';

class win_page extends StatefulWidget {
  const win_page({Key? key}) : super(key: key);

  @override
  State<win_page> createState() => _win_pageState();
}

class _win_pageState extends State<win_page> {
  @override
  Widget build(BuildContext context) {
    dynamic amt = ModalRoute.of(context)!.settings.arguments;
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
              "Your Answer Is Correct",
              style: TextStyle(color: Colors.red, fontSize: 22),
            ),
            const SizedBox(height: 50),
            const Text(
              "You Won",
              style: TextStyle(color: Color(0xffc78640), fontSize: 22),
            ),
            Text(
              "₹ $amt",
              style: const TextStyle(color: Color(0xffc78640), fontSize: 22),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  (Global.index == questions.length)
                      ? Navigator.of(context).pushNamedAndRemoveUntil(
                          "all_win_page", (route) => false)
                      : Navigator.of(context).pushReplacementNamed("/");
                });
              },
              child: const Text("Next"),
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
