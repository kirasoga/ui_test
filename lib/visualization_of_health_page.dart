// 健康の見える化画面

import 'package:flutter/material.dart';

class VisualizationOfHealthPage extends StatefulWidget {
  const VisualizationOfHealthPage({Key? key}) : super(key: key);

  @override
  _VisualizationOfHealthPageState createState() =>
      _VisualizationOfHealthPageState();
}

class _VisualizationOfHealthPageState extends State<VisualizationOfHealthPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            '健康の見える化画面です。',
          ),
        ],
      ),
    );
  }
}
