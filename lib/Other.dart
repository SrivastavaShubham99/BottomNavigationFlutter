import 'package:flutter/material.dart';


class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.red,
            ),
            Text("OTHER SCREEN IS HERE GUYS              1"),
          ],
        )
      ),
    );
  }
}
