import 'package:flutter/material.dart';

import 'secondpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("my first page"),
            ElevatedButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  );
                  Navigator.push(context, route);
                },
                child: Text("go to page 2"))
          ],
        ),
      ),
    );
  }
}
