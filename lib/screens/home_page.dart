import 'package:flutter/material.dart';

import '../question_bank.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var MyStyle = ElevatedButton.styleFrom(
    primary: const Color(0xff1e1f23),
    onPrimary: const Color(0xffa8a8a9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    textStyle: const TextStyle(fontSize: 18),
  );

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: questions[Global.index]["color"],
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "${Global.index + 1}. ${questions[Global.index]["question"]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[Global.index]["op1"] ==
                                    questions[Global.index]["ans"]) {
                                  (Global.index == 2)
                                      ? Global.amt = Global.amt + 1000
                                      : (Global.index == 3)
                                          ? Global.amt = Global.amt + 2000
                                          : Global.amt = Global.amt * 2;
                                  Global.index++;
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    "win_page",
                                    (Route route) => false,
                                    arguments: Global.amt,
                                  );
                                } else {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    "lose_page",
                                    (Route route) => false,
                                  );
                                  Global.index = 0;
                                  Global.amt = 500;
                                }
                              });
                            },
                            child: Text("A. ${questions[Global.index]["op1"]}"),
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[Global.index]["op2"] ==
                                    questions[Global.index]["ans"]) {
                                  (Global.index == 2)
                                      ? Global.amt = Global.amt + 1000
                                      : (Global.index == 3)
                                          ? Global.amt = Global.amt + 2000
                                          : Global.amt = Global.amt * 2;
                                  Global.index++;
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    "win_page",
                                    (Route route) => false,
                                    arguments: Global.amt,
                                  );
                                } else {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      "lose_page", (Route route) => false);
                                  Global.index = 0;
                                  Global.amt = 500;
                                }
                              });
                            },
                            child: Text("B.${questions[Global.index]["op2"]}"),
                            style: MyStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[Global.index]["op3"] ==
                                    questions[Global.index]["ans"]) {
                                  (Global.index == 2)
                                      ? Global.amt = Global.amt + 1000
                                      : (Global.index == 3)
                                          ? Global.amt = Global.amt + 2000
                                          : Global.amt = Global.amt * 2;
                                  Global.index++;
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    "win_page",
                                    (Route route) => false,
                                    arguments: Global.amt,
                                  );
                                } else {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      "lose_page", (Route route) => false);
                                  Global.index = 0;
                                  Global.amt = 500;
                                }
                              });
                            },
                            child: Text("C. ${questions[Global.index]["op3"]}"),
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[Global.index]["op4"] ==
                                    questions[Global.index]["ans"]) {
                                  (Global.index == 2)
                                      ? Global.amt = Global.amt + 1000
                                      : (Global.index == 3)
                                          ? Global.amt = Global.amt + 2000
                                          : Global.amt = Global.amt * 2;
                                  Global.index++;
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    "win_page",
                                    (Route route) => false,
                                    arguments: Global.amt,
                                  );
                                } else {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      "lose_page", (Route route) => false);
                                  Global.index = 0;
                                  Global.amt = 500;
                                }
                              });
                            },
                            child: Text("D. ${questions[Global.index]["op4"]}"),
                            style: MyStyle,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
