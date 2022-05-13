import 'package:flutter/material.dart';

import 'NotificationService.dart';
import 'chat_page.dart';
import 'fitbit_integration_page.dart';
import 'mail_notification_setting_page.dart';
import 'main_page.dart';
import 'next_page.dart';
import 'questionnaire_page.dart';
import 'visualization_of_health_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'ページタイトル'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<PageName> _widgetOptions = [
    PageName(pageName: "TOP画面", widget: const MainPage()),
    PageName(pageName: "アンケート画面", widget: const QuestionnairePage()),
    PageName(pageName: "Fitbit連携画面", widget: const FitbitIntegrationPage()),
    PageName(pageName: "チャット画面", widget: const ChatPage()),
    PageName(pageName: "メール通知設定画面", widget: const MailNoticeSettingPage()),
    PageName(pageName: "健康の見える化画面", widget: const VisualizationOfHealthPage())
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetOptions.elementAt(_selectedIndex).pageName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () async {
              // 通知発火
              NotificationService().scheduleLocalNotification();
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex).widget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: "アンケート",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: "Fitbit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "チャット",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "メール設定",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: "健康管理",
          ),
        ],

        // 選択
        currentIndex: _selectedIndex,
        // 選択したときはオレンジ色にする
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        // タップできるように
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ここにボタンを押した時に呼ばれるコードを書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PageName {
  PageName({required this.pageName, required this.widget});
  String pageName;
  Widget widget;
}
