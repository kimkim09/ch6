import 'package:flutter/material.dart';

class AlertDlg extends StatefulWidget {
  const AlertDlg({super.key});

  @override
  State<AlertDlg> createState() => _AlertDlgState();
}

class _AlertDlgState extends State<AlertDlg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.purple,
      ),
      body: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: (){
          ShowDialog(
            context: context,
            builder: (BuildContext context){
              return AlerDialog(
                title: Text('제목'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Alert Dialog 입니다.'),
                      Text('OK를 눌러주세요.')
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}