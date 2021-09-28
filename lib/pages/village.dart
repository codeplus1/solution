import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solution/widgets/TextEntry.dart';

class VillageInterest extends StatefulWidget {
  const VillageInterest({Key? key}) : super(key: key);

  @override
  _VillageInterestState createState() => _VillageInterestState();
}

class _VillageInterestState extends State<VillageInterest> {
  TextEditingController principle = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController jammabiyaj = TextEditingController();
  double jb = 0; //Only Biyaj
  double p = 0;
  double r = 0;
  double t = 0;
  double total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xee0722),
        title: Text("ब्याज"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    textEntry('मूल रकम ', principle),
                    textEntry('ब्याजदर', rate),
                    textEntry('समय अवधि', time),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    p = double.parse(principle.text);
                    r = double.parse(rate.text);
                    t = double.parse(time.text);
                    total = p * (pow((1 + (r * 12) / 100), t));
                    jb = total - p;
                    Text(jb.toString());
                    setState(() {});
                  },
                  child: Text('हिसाब गर्नुहोस्'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "जम्मा रकम: ${total.toString()}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "जम्मा ब्याज: ${jb.toString()}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
