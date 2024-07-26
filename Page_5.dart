import 'package:flutter/material.dart';
import 'Page_6.dart';

class Page_5 extends StatelessWidget {
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
            Text("登録が完了しました！", style: const TextStyle(fontSize: 20)),
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
                  MaterialPageRoute(builder: (context) => Page_6()),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(500, 50)), //ボタンの外枠の大きさを変えるwidjet
              child: const Text("始める", style: const TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
