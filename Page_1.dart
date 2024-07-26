import 'package:flutter/material.dart';
import 'Page_2.dart';
import 'Page_8.dart';

class FirstPage extends StatelessWidget {
  //登録画面
  String nameText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //主に使うやつを言えるやつ
      body: Center(
        child: Column(
          //列表示のwidjet,children下が列になる
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 250,
              child: Image.asset('picture/group_kids_no_dog.png',
              fit: BoxFit.contain,)),
            SizedBox(
              //行と行の間隔を定めるwidjet
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page_2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(500, 50)), //ボタンの外枠の大きさを変えるwidjet
              child: const Text("新規登録する", style: const TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page_8()),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 50)), //ボタンの外枠の大きさを変えるwidjet
              child:
                  const Text("ログインはこちら", style: const TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
