import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // You Can Declare Variable Here!
  TextEditingController fn = TextEditingController();
  TextEditingController sn = TextEditingController();
  double result = 0;
  double a = 0;
  double b = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: fn,
                decoration: InputDecoration(hintText: 'Enter First Number'),
              ),
              TextField(
                controller: sn,
                decoration: InputDecoration(hintText: 'Enter Second Number'),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      a = double.parse(fn.text);
                      b = double.parse(sn.text);
                      result = a + b;
                      setState(() {});
                    },
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      a = double.parse(fn.text);
                      b = double.parse(sn.text);
                      result = a - b;
                      setState(() {});
                    },
                    child: Text('Subtract'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      a = double.parse(fn.text);
                      b = double.parse(sn.text);
                      result = a * b;
                      setState(() {});
                    },
                    child: Text('Multiply'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      a = double.parse(fn.text);
                      b = double.parse(sn.text);
                      result = a / b;
                      setState(() {});
                    },
                    child: Text('Divide'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
