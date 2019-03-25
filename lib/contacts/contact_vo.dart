import 'package:flutter/material.dart';

class ContactVO {
  //字母排列值
  String seationKey;
  //名称
  String name;
  //头像url
  String avatarUrl;
  //构造函数
  ContactVO({@required this.seationKey,this.name,this.avatarUrl});
}
//好友数据集
List<ContactVO> contactData = [
  new ContactVO(
    seationKey: 'A',
    name: 'A张三',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/69/0029696009/s29696009oXBaEpBr0.jpg',
  ),
  new ContactVO(
    seationKey: 'A',
    name: '阿黄',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/39/0054392533/s543925335rsyVFZLn.jpg'
  ),
  new ContactVO(
    seationKey: 'B',
    name: '波波',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/59/0012598959/s12598959Qh8VMEbR6.jpg'
  ),
  new ContactVO(
    seationKey: 'C',
    name: '陈可',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/08/0032083945/s320839455dhT4RQ8Z.jpg'
  ),
  new ContactVO(
    seationKey: 'C',
    name: '参谋长',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/48/0030485885/s30485885UigHCFVs5.jpg'
  ),
  new ContactVO(
    seationKey: 'D',
    name: '杜一',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/68/0027689968/s27689968iNoGKEWYQ.jpg'
  ),
  new ContactVO(
    seationKey: 'D',
    name: '东方红',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/41/1352419926/s1352419926ojIToos.jpg'
  ),
  new ContactVO(
    seationKey: 'D',
    name: '大表哥',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/64/1352645210/s1352645210-vIrSv5.jpg'
  ),
  new ContactVO(
    seationKey: 'F',
    name: '飞机',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/24/0021249620/s212496206VoJAtJfx.jpg'
  ),
  new ContactVO(
    seationKey: 'G',
    name: '高大上',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/60/1352607553/s13526075533QAC8I1.jpg'
  ),
  new ContactVO(
    seationKey: 'H',
    name: 'herbie',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/56/1352561114/s1352561114WttMtND.jpg'
  ),
  new ContactVO(
    seationKey: 'H',
    name: '何小冉',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/78/1352787710/s1352787710ocabI79.jpg'
  ),
  new ContactVO(
    seationKey: 'J',
    name: '姬如雪',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/93/0035933307/s35933307hUEd60gFY.jpg'
  ),
  new ContactVO(
    seationKey: 'J',
    name: 'JC',
    avatarUrl: ''
  ),
  new ContactVO(
    seationKey: 'J',
    name: 'JCZ',
    avatarUrl: ''
  ),
  new ContactVO(seationKey: 'L', name: '联通', avatarUrl: ''),
  new ContactVO(
    seationKey: 'L',
    name: '留学生',
    avatarUrl: 'https://downhdlogo.yy.com/hdlogo/6060/60/60/48/1485486415/u1485486415LknaDqp.jpeg'
  ),
  new ContactVO(
    seationKey: 'L',
    name: '李先森',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/61/1382618599/s1382618599oAfSusx.jpg'
  ),
  new ContactVO(
    seationKey: 'L',
    name: '罗森',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/93/0063939637/s63939637OILdr4CF8.jpg'
  ),
  new ContactVO(
    seationKey: 'L',
    name: '老司机',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/74/0023740919/s23740919L05zjSkE3.jpg'
  ),
  new ContactVO( seationKey: 'L', name: '辣眼睛', avatarUrl: ''),
  new ContactVO(seationKey: 'M', name: 'Mary', avatarUrl: ''),
  new ContactVO( seationKey: 'M', name: 'Master', avatarUrl: ''),
  new ContactVO(seationKey: 'P', name: '彭于晏', avatarUrl: ''),
  new ContactVO( seationKey: 'P', name: '彭简', avatarUrl: ''),
  new ContactVO(
    seationKey: 'Q',
    name: '乔大',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/94/1348944983/s1348944983iUMDxYT.jpg'
  ),
  new ContactVO(
    seationKey: 'Q',
    name: '乔小',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/18/0023182299/s23182299EscCvk8nC.jpg'
  ),
  new ContactVO(
    seationKey: 'Q',
    name: '邱小玲',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/31/0033315447/s33315447gGl8YIWpd.jpg'
  ),
  new ContactVO(
    seationKey: 'Q',
    name: '齐东宇',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/82/1352823837/s1352823837mqL_uzC.jpg'
  ),
  new ContactVO(
    seationKey: 'R',
    name: 'rogerMan',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/64/1352646955/s1352646955RAFHOB8.jpg'
  ),
  new ContactVO(
    seationKey: 'S',
    name: '石头熊',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/84/0021841677/s218416770xNxfr9bM.jpg'
  ),
  new ContactVO(seationKey: 'S', name: '孙丽', avatarUrl: ''),
  new ContactVO( seationKey: 'S', name: '沈家', avatarUrl: ''),
  new ContactVO(
    seationKey: 'T',
    name: '天天',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/56/0021562663/s21562663tf63BCczw.jpg'
  ),
  new ContactVO(
    seationKey: 'W',
    name: '薇薇安',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/42/0029424787/s29424787hNvRcvlfk.jpg'
  ),
  new ContactVO(seationKey: 'X', name: '小猪', avatarUrl: ''),
  new ContactVO( seationKey: 'X', name: '小猪佩奇', avatarUrl: ''),
  new ContactVO(
    seationKey: 'X',
    name: '茜茜',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/20/1352208022/s1352208022EyWQdm2.jpg'
  ),
  new ContactVO( seationKey: 'Y', name: '杨洋', avatarUrl: ''),
  new ContactVO(
    seationKey: 'Z',
    name: '张一山',
    avatarUrl: 'https://downhdlogo.yy.com/applogo/session/60/60/98/0082989696/s82989696lBb3gMBcp.jpg'
  ),
];