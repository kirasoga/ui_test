import 'dart:math' as math;

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationService {
  init() {
    tz.initializeTimeZones();
    var tokyo = tz.getLocation('Asia/Tokyo');
    tz.setLocalLocation(tokyo);
  }

  /// ローカル通知をスケジュールする
  scheduleLocalNotification() async {
    // 初期化
    flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
          android: AndroidInitializationSettings('app_icon'), // app_icon.pngを配置
          iOS: IOSInitializationSettings()),
    );
    // スケジュール設定する
    int id = (math.Random()).nextInt(10);
    flutterLocalNotificationsPlugin.zonedSchedule(
        id,
        'Local Notification Title $id',
        'Local Notification Body $id',
        tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
        const NotificationDetails(
            android: AndroidNotificationDetails(
                'my_channel_id', 'my_channel_name',
                importance: Importance.max, priority: Priority.high),
            iOS: IOSNotificationDetails()),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}
