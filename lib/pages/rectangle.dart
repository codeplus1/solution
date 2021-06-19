import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  _RectangleState createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  TextEditingController len = TextEditingController();
  TextEditingController br = TextEditingController();
  double length = 0;
  double breadth = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rectangle"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: len,
                decoration: InputDecoration(hintText: 'Enter Length'),
              ),
              TextField(
                controller: br,
                decoration: InputDecoration(hintText: 'Enter breadth'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  length = double.parse(len.text);
                  breadth = double.parse(br.text);
                  result = length * breadth;
                  setState(() {});
                },
                child: Text("Calculate Area"),
              ),
              ElevatedButton(
                onPressed: () {
                  length = double.parse(len.text);
                  breadth = double.parse(br.text);
                  result = 2 * (length + breadth);
                  setState(() {});
                },
                child: Text("Calculate perimeter"),
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
