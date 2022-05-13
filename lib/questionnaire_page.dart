// アンケート画面

import 'package:flutter/material.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({Key? key}) : super(key: key);

  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'アンケート画面です。',
          ),
        ],
      ),
    );
  }
}
