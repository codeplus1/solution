import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  TextEditingController p = TextEditingController();
  TextEditingController t = TextEditingController();
  TextEditingController r = TextEditingController();
  double result = 0;
  double principle = 0;
  double time = 0;
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: p,
                decoration: InputDecoration(hintText: 'Enter principle'),
              ),
              TextField(
                controller: t,
                decoration: InputDecoration(hintText: 'Enter Time'),
              ),
              TextField(
                controller: r,
                decoration: InputDecoration(hintText: 'Enter Rate'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  principle = double.parse(p.text);
                  time = double.parse(t.text);
                  rate = double.parse(r.text);
                  result = (principle * time * rate) / 100;
                  setState(() {});
                },
                child: Text("Calculate SI"),
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
