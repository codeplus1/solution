import 'package:flutter/material.dart';
import 'package:solution/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? lastPressed; //LastPressed Variable For Double Tap to Close

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
      // ए willpopScope जो है वहा से Double Tap To close App के कोड स्टार्ट हुआ है
      body: WillPopScope(
        onWillPop: () async {
          final now = DateTime.now();
          final maxDuration = Duration(seconds: 2);
          final isWarning =
              lastPressed == null || now.difference(lastPressed!) > maxDuration;
          if (isWarning) {
            lastPressed = DateTime.now();

            final snackBar = SnackBar(
              content: Text('Double Tap To Close App'),
              duration: maxDuration,
            );

            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(snackBar);
            return false;
          } else {
            return true;
          }
        },
        // Code end Here of DOuble tap
        child: Column(),
      ),
    );
  }
}
