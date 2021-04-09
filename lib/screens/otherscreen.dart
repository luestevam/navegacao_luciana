import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {

  Future<bool> _requestPop(BuildContext context) async {
    bool exit = false;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Deseja Sair?'),
        actions: [
          ElevatedButton(
            child: Text('Sim'),
            onPressed: () {
              exit = true;
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: Text('Não'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );

    return exit;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await _requestPop(context);
      },
      child: Scaffold(
          appBar: AppBar(
        title: Text("Other Page"),
      )),
    );
  }
}
