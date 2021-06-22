import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: InkWell(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Saroj Yadav"),
              accountEmail: Text('sarojyadav88505@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text("SY"),
              ),
            ),
            // Calculator
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/calculator");
              },
              leading: Icon(
                Icons.calculate,
                color: Colors.blue,
              ),
              title: Text("Calculator"),
            ),
            // Circle
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/circle");
              },
              leading: Icon(
                Icons.circle_outlined,
                color: Colors.blue,
              ),
              title: Text("circle"),
            ),
            // Simple Interest
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/interest");
              },
              leading: Icon(
                Icons.attach_money,
                color: Colors.blue,
              ),
              title: Text("Simple Interest"),
            ),
            // Rectangle
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/rectangle");
              },
              leading: Icon(
                Icons.texture_outlined,
                color: Colors.blue,
              ),
              title: Text("Rectangle"),
            ),
            //Temperature
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/temperature");
              },
              leading: Text(
                "°C",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              title: Text("Temperature"),
            ),
            // Square
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/square");
              },
              leading: Icon(
                Icons.crop_square_sharp,
                color: Colors.blue,
              ),
              title: Text("Square"),
            ),

            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/calculate");
              },
              leading: Icon(
                Icons.calculate_outlined,
                color: Colors.blue,
              ),
              title: Text("Calculate"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                }
              },
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
              title: Text("Exit From App"),
            ),
          ],
        ),
      ),
    );
  }
}
