import 'package:flutter/material.dart';

class BackdropMenuScreen extends StatefulWidget {
  @override
  _BackdropMenuScreenState createState() => _BackdropMenuScreenState();
}

class _BackdropMenuScreenState extends State<BackdropMenuScreen> {
  bool isTapped = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.green,
            toolbarHeight: 100,
            leading: IconButton(
              icon: Icon(Icons.height),
              onPressed: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
            ),
          ),
          body: ListView(
            children: [
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
            ],
          ),
        ),
        AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Colors.purple,
          ),
          height: isTapped ? screenSize.height - 100 : 100,
          width: screenSize.width,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: SingleChildScrollView(
            child: Container(
              height: screenSize.height - 100,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                  FlutterLogo(
                    size: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
