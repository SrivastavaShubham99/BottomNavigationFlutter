import 'package:bottom_navigation_app/other3.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'Other.dart';
import 'other2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _selectedIndex=1;
final List<Widget> _children=[
  Other(),
  Other2(),
  Other3()
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        margin: EdgeInsets.only(top: 4),
        child: FFNavigationBar(
          theme: FFNavigationBarTheme(
              showSelectedItemShadow: true,
              barBackgroundColor: Colors.blue[200],
              selectedItemBackgroundColor: Colors.white,
              selectedItemIconColor: Colors.blue[200],
              selectedItemBorderColor: Colors.blue[200],
              selectedItemLabelColor: Colors.white,
              unselectedItemLabelColor: Colors.blue[200],
              unselectedItemIconColor: Colors.white,
              itemWidth: 60,
              selectedItemTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 10

              )
          ),
          selectedIndex: _selectedIndex,
          onSelectTab: onTabTapped,
          items: [
            FFNavigationBarItem(
              iconData: Icons.calendar_today,
              label: "first",
            ),
            FFNavigationBarItem(
              iconData: Icons.note_add_sharp,
              label: "email",
            ),

            FFNavigationBarItem(
              iconData: Icons.home_filled,
              label: "home",
            ),
          ],
        ),
      ) ,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[_selectedIndex]
    );
  }
onTabTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
}
}
