import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  var _currentIndex = 0;
  MessagePage message;
  Contacts contacts;
  Personal me;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = new MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if (me == null) {
          me = new Personal();
        }
        return me;
      default:
    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: GestureDetector(
        onTap: () {
          Fluttertoast.showToast(
            msg: '想啥呢！...',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0
          );
        },
        child: Row(
          children: <Widget>[
            imagePath != null ? Image.asset(
              imagePath,
              width: 32.0,
              height: 32.0,
            )
            : SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HaChat'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  items: <PopupMenuEntry> [
                    _popupMenuItem('发起会话', imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('添加好友', imagePath: 'images/icon_menu_addfriend.png'),
                    _popupMenuItem('联系客服', icon: Icons.person),
                  ],
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          new BottomNavigationBarItem(
            title: new Text(
              '聊天',
              style: TextStyle(
                color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 0 ? Image.asset(
              'images/message_pressed.png',
              width: 32.0,
              height: 28.0,
            )
            :Image.asset(
              'images/message_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
          new BottomNavigationBarItem(
            title: new Text(
              '好友',
              style:TextStyle(
                color: _currentIndex == 1 ? Color(0xFF46c01b) : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 1 ? Image.asset(
              'images/contact_list_pressed.png',
              width: 32.0,
              height: 28.0,
            )
            :Image.asset(
              'images/contact_list_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
          new BottomNavigationBarItem(
            title: new Text(
              '我的',
              style:TextStyle(
                color: _currentIndex == 2 ? Color(0xFF46c01b) : Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 2 ? Image.asset(
              'images/profile_pressed.png',
              width: 32.0,
              height: 28.0,
            )
            :Image.asset(
              'images/profile_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
        ],
      ),
      body: currentPage(),
    );
  }
}