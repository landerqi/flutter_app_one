//消息类型枚举类型
enum MessageType { SYSTEM,PUBLIC,CHAT,GROUP }

//聊天数据
class MessageData{
  //头像
  String avatar;
  //主标题
  String title;
  //子标题
  String subTitle;
  //消息时间
  DateTime time;
  //消息类型
  MessageType type;

  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

//组装数据
List<MessageData> messageData = [
  new MessageData('https://downhdlogo.yy.com/hdlogo/6060/60/60/48/1485486415/u1485486415LknaDqp.jpeg',
      '陈小诺',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/87/0024870988/s24870988juVue48k1.jpg',
      '656粤儿',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/48/0030485885/s30485885UigHCFVs5.jpg',
      '顺溜',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/10/0021100462/s21100462F5P8Imbqj.jpg',
      '【娱+】露露',
      '在么？...',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/28/0059282220/s59282220dlZLwfUMm.jpg',
      '◣热度◥若欣',
      '暂无标签',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/56/1352561114/s1352561114WttMtND.jpg',
      '艾妮儿',
      '暂无标签',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/79/1352795496/s1352795496esrqqDn.jpg',
      '小锤锤',
      '小锤锤...',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/18/0023182299/s23182299EscCvk8nC.jpg',
      '能歌善污小脾气',
      '能歌善污小脾气能歌善污小脾气能歌善污小脾气',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://downhdlogo.yy.com/hdlogo/6060/60/60/48/1485486415/u1485486415LknaDqp.jpeg',
      '陈小诺',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/87/0024870988/s24870988juVue48k1.jpg',
      '656粤儿',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/48/0030485885/s30485885UigHCFVs5.jpg',
      '顺溜',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/10/0021100462/s21100462F5P8Imbqj.jpg',
      '【娱+】露露',
      '在么？...',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/28/0059282220/s59282220dlZLwfUMm.jpg',
      '◣热度◥若欣',
      '暂无标签',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/56/1352561114/s1352561114WttMtND.jpg',
      '艾妮儿',
      '暂无标签',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/79/1352795496/s1352795496esrqqDn.jpg',
      '小锤锤',
      '小锤锤...',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://downhdlogo.yy.com/applogo/session/60/60/18/0023182299/s23182299EscCvk8nC.jpg',
      '能歌善污小脾气',
      '能歌善污小脾气能歌善污小脾气能歌善污小脾气',
      new DateTime.now(),
      MessageType.CHAT
  ),
];
