// メール通知設定画面

import 'package:flutter/material.dart';

class MailNoticeSettingPage extends StatefulWidget {
  const MailNoticeSettingPage({Key? key}) : super(key: key);

  @override
  _MailNoticeSettingPageState createState() => _MailNoticeSettingPageState();
}

class _MailNoticeSettingPageState extends State<MailNoticeSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'メール通知設定画面です。',
          ),
        ],
      ),
    );
  }
}
