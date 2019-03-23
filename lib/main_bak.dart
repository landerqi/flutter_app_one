import 'package:flutter/material.dart';

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: items.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('TabBar选项卡示例'),
            bottom: new TabBar(
              isScrollable: true,
              tabs: items.map((ItemView item) {
                return new Tab(
                  text: item.title,
                  icon: new Icon(item.icon)
                );
              }).toList(),
            ),
          ),
          body: new TabBarView(
            children: items.map((ItemView item) {
              return new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new SelectedView(item: item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ItemView {
  const ItemView({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<ItemView> items = const <ItemView>[
  const ItemView(title: '自驾', icon:Icons.directions_car),
  const ItemView(title: '自行车', icon:Icons.directions_bike),
  const ItemView(title: '轮船', icon:Icons.directions_boat),
  const ItemView(title: '公交车', icon:Icons.directions_bus),
  const ItemView(title: '火车', icon:Icons.directions_railway),
  const ItemView(title: '步行', icon:Icons.directions_walk),
];

class SelectedView extends StatelessWidget{
  const SelectedView({ Key key, this.item }) :super(key: key);
  final ItemView item;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =Theme.of(context).textTheme.display1;
    return new Card(
      color:Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(item.icon, size: 128.0, color: textStyle.color,),
            new Text(item.title, style: textStyle),
          ],
        ),
      )
    );
  }
}

void main() => runApp(TabBarSample());
