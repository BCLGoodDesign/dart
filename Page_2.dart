import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Page_3.dart';

class Page_2 extends StatelessWidget {
  //登録画面
  String nameText = '';

  void main(x) {
    nameText = x;
  }

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //主に使うやつを言えるやつ
      body: Center(
        child: Padding(
          //column自体をpaddingで上に上昇
          padding: const EdgeInsets.only(
            bottom: 150,
          ),
          child: Column(
            //列表示のwidjet,children下が列になる
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                //行と行の間隔を定めるwidjet
                height: 15,
              ),
              Text("基本情報の登録", style: const TextStyle(fontSize: 20)),
              SizedBox(
                height: 40,
              ),
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
                  controller: controller,
                  inputFormatters: [
                    // 最大8文字まで入力可能
                    LengthLimitingTextInputFormatter(8),
                    // 半角英数字のみ許可
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z0-9]'),
                    ),
                  ],

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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '英数字8桁以上 ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("代表者氏名", style: const TextStyle(fontSize: 15))),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  onChanged: (value) {
                    nameText = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '山田花子 ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("店舗名", style: const TextStyle(fontSize: 15))),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: nameText.length == 4
                    ? null
                    : () {
                        print(controller.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page_3()),
                        );
                      },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(400, 50)), //ボタンの外枠の大きさを変えるwidjet
                child: const Text("次へ", style: const TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
