import 'package:flutter/material.dart';

import 'home_screen.dart';

class BemVindo extends StatelessWidget {
  final String page;

  const BemVindo({Key key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              page,
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
