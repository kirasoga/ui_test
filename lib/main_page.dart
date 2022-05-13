import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;

  void _tapCount() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(onPressed: _tapCount, child: Text("カウントボタン")),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return CupertinoAlertDialog(
                    title: Text("タイトル"),
                    content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
                    actions: <Widget>[
                      // ボタン領域
                      ElevatedButton(
                        child: Text("Cancel"),
                        style: ElevatedButton.styleFrom(
                          // 透明にする
                          primary: Colors.transparent,
                          // 影を消す
                          elevation: 0,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      ElevatedButton(
                        child: Text("OK"),
                        style: ElevatedButton.styleFrom(
                          // 透明にする
                          primary: Colors.transparent,
                          // 影を消す
                          elevation: 0,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("iOS"),
          ),
        ],
      ),
    );
  }
}
