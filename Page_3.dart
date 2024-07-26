import 'package:flutter/material.dart';
import 'Page_4.dart';

class Page_3 extends StatelessWidget {
  //登録画面
  String nameText = '';
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
            children: [
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
                    "店舗の住所",
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
                    labelText: '山口県山口市 ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("それ以降の住所", style: const TextStyle(fontSize: 15))),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '吉田 ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("丁目・番地（半角）", style: const TextStyle(fontSize: 15))),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '1677-1 ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("ビル・マンション等", style: const TextStyle(fontSize: 15))),
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
                height: 15,
              ),
              Container(
                  alignment: Alignment.centerLeft, //任意のプロパティ
                  child: Text("電話番号", style: const TextStyle(fontSize: 15))),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'xxx-0000-xxxx ',
                    labelStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page_4()),
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
