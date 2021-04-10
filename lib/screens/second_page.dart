import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/third_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda página"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Segunda página",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey),
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    )
                );
              },
            ),



          ],
        ),
      ),

    );
  }
}