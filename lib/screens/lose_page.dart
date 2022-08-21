import 'package:flutter/material.dart';

class lose_page extends StatefulWidget {
  const lose_page({Key? key}) : super(key: key);

  @override
  State<lose_page> createState() => _lose_pageState();
}

class _lose_pageState extends State<lose_page> {
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
              child: Image.asset("assets/images/22.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "oops!",
              style: TextStyle(color: Color(0xffa8a8a9), fontSize: 22),
            ),
            const SizedBox(height: 50),
            const Text(
              "Sorry You are",
              style: TextStyle(color: Color(0xffa8a8a9), fontSize: 22),
            ),
            const Text(
              "the loss",
              style: TextStyle(color: Color(0xffa8a8a9), fontSize: 22),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/", (route) => false);
                });
              },
              child: const Text("Try again"),
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
