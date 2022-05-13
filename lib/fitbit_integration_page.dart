// Fitbit連携画面

import 'package:flutter/material.dart';

class FitbitIntegrationPage extends StatefulWidget {
  const FitbitIntegrationPage({Key? key}) : super(key: key);

  @override
  _FitbitIntegrationPageState createState() => _FitbitIntegrationPageState();
}

class _FitbitIntegrationPageState extends State<FitbitIntegrationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Fitbit連携画面です。',
          ),
        ],
      ),
    );
  }
}
