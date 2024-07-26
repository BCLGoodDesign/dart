import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page_1.dart';
import 'Page_9.dart';

class Page_8 extends StatefulWidget {
  const Page_8({Key? key}) : super(key: key);

  @override
  State<Page_8> createState() => _CheckboxSingleState();
}

class _CheckboxSingleState extends State<Page_8> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              //conteinerを用いて、中のtextを左側に
              alignment: Alignment.centerLeft, //任意のプロパティ
              child: Text(
                "メールアドレス",
                style: const TextStyle(fontSize: 15),
              )),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextField(
              //入力画面を打ち込むためののwidjet
              decoration: InputDecoration(
                //外枠
                border: OutlineInputBorder(),
                labelText: 'sample@xxx ',
                labelStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              alignment: Alignment.centerLeft, //任意のプロパティ
              child: Text("パスワード", style: const TextStyle(fontSize: 15))),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextField(
              obscureText: !_isChecked, //!はノットイコール
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '英数字8桁以上 ',
                labelStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          CheckboxListTile(     //チェックボタン
            title: Text("パスワードを表示する"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                //チェックボタンを押すと、変化する内容
                _isChecked = !_isChecked;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page_9()),
              );
            },
            style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 50)), //ボタンの外枠の大きさを変えるwidjet
            child: const Text("ログイン", style: const TextStyle(fontSize: 15)),
          ),
          CheckboxListTile(
            title: Text("ログイン状態を保持する"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
          ),
        ],
      ),
    );
  }
}
