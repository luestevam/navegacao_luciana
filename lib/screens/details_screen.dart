import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("We are in the details page here",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey),
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),

    );
  }
}
