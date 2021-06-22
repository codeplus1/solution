import 'package:flutter/material.dart';
import 'package:solution/widgets/TextEntry.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  TextEditingController radius = TextEditingController();
  double pi = 3.142;
  double r = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xee0722),
        title: Text("Circle"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textEntry('Enter Radius', radius),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Area of Circle
                  ElevatedButton(
                    onPressed: () {
                      r = double.parse(radius.text);
                      result = pi * r * r;
                      setState(() {});
                    },
                    child: Text('Calculate Area'),
                  ),
                  // Diameter of Circle
                  ElevatedButton(
                    onPressed: () {
                      r = double.parse(radius.text);
                      result = 2 * r;
                      setState(() {});
                    },
                    child: Text('Calculate Dimeter'),
                  ),
                  // Circumference of Circle
                  ElevatedButton(
                    onPressed: () {
                      r = double.parse(radius.text);
                      result = 2 * pi * r;
                      setState(() {});
                    },
                    child: Text('Calculate Circumference'),
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
