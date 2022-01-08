import 'package:cs_routing/pages/thirdpage.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _stdId = TextEditingController();
  TextEditingController _stdName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "my second page",
            ),
            addId(),
            addName(),
            sendBT(context),
            backBT(context)
          ],
        ),
      ),
    );
  }

  ElevatedButton sendBT(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          var route = MaterialPageRoute(
              builder: (context) => ThirdPage(
                    stdId: _stdId.text,
                    stdName: _stdName.text,
                  ));
          Navigator.push(context, route);
        },
        // child: Text("go to page 3"))
        child: Text("ยืนยันข้อมูล ส่งค่า "));
  }

  ElevatedButton backBT(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          var route = MaterialPageRoute(
            builder: (context) => Firstpage(),
          );
          Navigator.pop(context);
        },
        // child: Text("go to page 3"))
        child: Text("กลับไปหน้าแรก"));
  }

  Container addName() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: TextFormField(
          style: TextStyle(color: Colors.purple),
          controller: _stdName,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: 'ชื่อนิสิต',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
              )),
        ),
      ),
    );
  }

  Container addId() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: TextFormField(
          style: TextStyle(color: Colors.purple),
          keyboardType: TextInputType.number,
          controller: _stdId,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: 'รหัสนิสิต',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
              )),
        ),
      ),
    );
  }
}
