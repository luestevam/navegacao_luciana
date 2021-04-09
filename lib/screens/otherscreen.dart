import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<bool> _requestPop(BuildContext context){
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text ('Deseja Sair?'),
          actions:[
            GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
              child: Text ('Não'),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(true),
              child: Text ('Sim'),
            ),
          ],
        ),
      ) ??
          false;
    }


    return WillPopScope (
      onWillPop: () => _requestPop(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Other Page"),
        )
      ),
    );
  }


}
