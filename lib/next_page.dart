import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('2画面目'),
        ),
        body: const NextTabPage());
  }
}

class NextTabPage extends StatefulWidget {
  const NextTabPage({Key? key}) : super(key: key);

  @override
  _NextTabPageState createState() => _NextTabPageState();
}

class _NextTabPageState extends State<NextTabPage> {
  String _text = "";

  void _handleText(String a) {
    setState(() {
      _text = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _text,
          style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500),
        ),
        TextField(
          enabled: true,
          // 入力数
          maxLength: 10,
          style: const TextStyle(color: Colors.red),
          obscureText: false,
          maxLines: 1,
          //パスワード
          onChanged: _handleText,
          decoration: const InputDecoration(
            icon: Icon(Icons.face),
            hintText: '年齢を入力してください',
            labelText: '年齢 *',
          ),
        ),
      ],
    );
  }
}
