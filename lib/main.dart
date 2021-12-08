import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titleList = [
    "ベテルギウス",
    "ナイトオンザプラネット",
    "なんでもないよ",
    "世界は美しいはずなんだ",
    "夜撫でるメノウ",
    "最後のTight Hug",
    "アンコール",
    "もしも命が描けたら",
    "YURA YURA",
    "少年少女",
    "Life Goes On"
  ];

  var subTitleList = [
    "優里",
    "クリープハイプ",
    "マカロニえんぴつ",
    "yama",
    "Ayase",
    "乃木坂46",
    "sumika",
    "YOASOBI",
    "WANDS",
    "銀杏BOYZ",
    "BTS"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "曲",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12)
                )
              ),
              child: ListTile(
                title: Text(titleList[index]),
                subtitle: Text(subTitleList[index]),
                leading: Container(
                  height: 70,
                  width: 60,
                  child: Image.network("https://images.unsplash.com/photo-1528164344705-47542687000d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80"),
                ),
                trailing: PopupMenuButton(
                  offset: Offset(0, 30),
                  itemBuilder: (context) => <PopupMenuEntry<Object>> [
                    PopupMenuItem(
                        child: ListTile(
                          leading: Text("プレイリストに追加..."),
                          trailing: Icon(Icons.playlist_add),
                        )
                    ),
                    PopupMenuDivider(
                      height: 10,
                    ),
                    PopupMenuItem(
                        child: ListTile(
                          leading: Text("次に再生"),
                          trailing: Icon(Icons.calculate_outlined),
                        )
                    ),
                    PopupMenuItem(
                        child: ListTile(
                          leading: Text("最後に再生"),
                          trailing: Icon(Icons.calculate_outlined),
                        )
                    ),
                  ],
                ),
              ),
            );
          },
        itemCount: titleList.length,
      )
    );
  }
}
