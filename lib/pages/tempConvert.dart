import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  TextEditingController c = TextEditingController();
  TextEditingController f = TextEditingController();
  double result = 0;
  double celsius = 0;
  double fahrenheit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temperature Conversion"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: f,
                decoration: InputDecoration(
                  hintText: 'Enter Temperature in Fahrenheit',
                ),
              ),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  hintText: 'Enter Temperature in Celsius',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  fahrenheit = double.parse(f.text);
                  result = (5 / 9) * (fahrenheit - 32);
                  setState(() {});
                },
                child: Text("Convert To °C"),
              ),
              ElevatedButton(
                onPressed: () {
                  celsius = double.parse(c.text);
                  result = (9 / 5 * celsius) + 32;

                  setState(() {});
                },
                child: Text("Convert To °F"),
              ),
              Text(
                "Result : ${result.toString()}°",
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
