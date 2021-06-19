import 'package:flutter/material.dart';
import 'package:solution/widgets/drawer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.sort,
              size: 50,
            ),
          ),
        ),
        title: Text(
          'Homepage',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Horizon',
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Homework Completed By:',
                        textStyle: TextStyle(
                            fontFamily: 'Bobbers',
                            fontSize: 30,
                            color: Colors.redAccent)),
                    RotateAnimatedText('Saroj',
                        textStyle: TextStyle(color: Colors.blue)),
                    RotateAnimatedText('Kumar',
                        textStyle: TextStyle(color: Colors.lightGreen)),
                    RotateAnimatedText('Yadav',
                        textStyle: TextStyle(color: Colors.pink)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
