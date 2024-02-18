// ignore_for_file: must_be_immutable
import 'package:counter/countbutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0;
  int num2 = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: Text(
            "Recorded Points",
            style: TextStyle(
                fontSize: 32, color: Colors.black, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Team A ",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Text(
                    '$num1',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num1 += 1;
                      });
                    },
                    child: CountButton(
                      text: "Add One Points",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num1 += 2;
                      });
                    },
                    child: CountButton(
                      text: "Add Two Points",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num1 += 3;
                      });
                    },
                    child: CountButton(
                      text: "Add Three Points",
                    ),
                  )
                ],
              ),
              Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Team B ",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Text(
                    '$num2',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num2 += 1;
                      });
                    },
                    child: CountButton(
                      text: "Add One Points",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num2 += 2;
                      });
                    },
                    child: CountButton(
                      text: "Add Two Points",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        num2 += 3;
                      });
                    },
                    child: CountButton(
                      text: "Add Three Points",
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      num1 = 0;
                      num2 = 0;
                    });
                  },
                  child: CountButton(text: "Reset")))
        ],
      ),
    );
  }
}
