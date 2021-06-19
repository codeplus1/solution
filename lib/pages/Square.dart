import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  const Square({Key? key}) : super(key: key);

  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {
  TextEditingController s = TextEditingController();
  int result = 0;
  int side = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Square"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: s,
                decoration:
                    InputDecoration(hintText: 'Enter Side Length of Square'),
              ),
              SizedBox(height: 10),
              // Perimeter
              ElevatedButton(
                onPressed: () {
                  side = int.parse(s.text);
                  result = 4 * (side);
                  setState(() {});
                },
                child: Text("Calculate Perimeter"),
              ),
              // Area of Square
              ElevatedButton(
                onPressed: () {
                  side = int.parse(s.text);
                  result = side * side;
                  setState(() {});
                },
                child: Text("Calculate Area"),
              ),
              Text(
                "Result : ${result.toString()}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
