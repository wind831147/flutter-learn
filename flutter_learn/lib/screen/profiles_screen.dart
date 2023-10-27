import 'package:flutter/material.dart';

class ProfilesPage extends StatefulWidget {
  const ProfilesPage({super.key});

  @override
  _ProfilesPage createState() => _ProfilesPage();
}

class _ProfilesPage extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Jimmytest', style: TextStyle(color: Colors.red)),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                icon: const Icon(Icons.menu)),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: const Padding(
            padding: EdgeInsets.all(16.0), // 設置間距,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Column(children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 28,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "鄭宇均",
                      style: TextStyle(color: Colors.white),
                    )
                  ])),
                  Expanded(
                      child: Column(children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "貼文",
                      style: TextStyle(color: Colors.white),
                    )
                  ])),
                  Expanded(
                      child: Column(children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "粉絲",
                      style: TextStyle(color: Colors.white),
                    )
                  ])),
                  Expanded(
                      child: Column(children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "追蹤中",
                      style: TextStyle(color: Colors.white),
                    )
                  ]))
                ],
              ),
              Row(
                children: [
                  ButtonBar(
                    children: <Widget>[
                      // ElevatedButton()
                    ],
                  )
                ],
              )
            ]),
          ),
        ));
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: Colors.black, // 設置背景顏色
        height: 200, // 設定選單高度
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                title: const Text('相機', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // 在這裡處理相機選項的點擊事件
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
                title: const Text('設定', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // 在這裡處理相片選項的點擊事件
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
