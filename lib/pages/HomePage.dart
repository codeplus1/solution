import 'package:flutter/material.dart';
import 'package:solution/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? lastPressed; // LastPressed Variable For Double Tap to Close

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xee0722),
        // backgroundColor: Colors.red[600],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.sort,
              size: 50,
              color: Colors.black87,
            ),
          ),
        ),
        title: InkWell(
          child: ListTile(
            onTap: () {},
            trailing: Image.asset(
              "assets/solution1.png",
              fit: BoxFit.cover,
            ),
            title: Text(
              'Solutions',
              textScaleFactor: 1.8,
              style: TextStyle(
                  color: Colors.black,
                  // fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/solution2.png",
                  fit: BoxFit.cover,
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
