import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '聊天室',
  theme: mDefaultTheme,
  // 路由
  routes: <String, WidgetBuilder>{
    'app': (BuildContext context) => new App(),
    '/yycom': (_) => new WebviewScaffold(
      url: 'https://yy.com',
      appBar: new AppBar(
      title: new Text('YY'),
      ),
      withZoom: true,
      withLocalStorage: true,
    ),
    '/friends': (_) => new WebviewScaffold(
      url: 'https://baidu.com',
      appBar: new AppBar(
        title: new Text('百度'),
      ),
      withZoom: true,
      withLocalStorage: true,
    ),
    'search': (BuildContext context) => new Search(),
  },
  home: new LoadingPage(),
));

// 自定义主题
final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green,
);