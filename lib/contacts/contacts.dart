import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_sider_list.dart';
import './contact_item.dart';
import './contact_header.dart';
import './contact_vo.dart';

// 好友列表主界面
class Contacts extends StatefulWidget {
  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        // 好友列表头
        headerBuilder: (BuildContext context, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        // 好友列表项
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.green,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index]),
          );
        },
        sectionBuilder: (BuildContext context, int index) {
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0, color: Color(0xff909090))
            ),
          );
        },
      ),
    );
  }
}