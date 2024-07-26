import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Page_8.dart';


class Page_7 extends StatelessWidget {
  //最初のページ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //主に使うやつを言えるやつ
      body: PageView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("設置環境の設備", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 15,
                ),
                Text("スマホスタンド", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                      'picture/group_kids_no_dog.png',
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("地面から150cm~190cmの範囲が映るように",
                    style: const TextStyle(fontSize: 20)),
                Text("縦画面で設定してください", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("設置環境の設備", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Text("スマホスタンド", style: const TextStyle(fontSize: 20)),
                                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                      'picture/group_kids_no_dog.png',
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("地面から150cm~190cmの範囲が映るように",
                    style: const TextStyle(fontSize: 20)),
                Text("縦画面で設定してください", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("充電コードへの接続", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                      'picture/group_kids_no_dog.png',
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("地面から150cm~190cmの範囲が映るように",
                    style: const TextStyle(fontSize: 20)),
                Text("縦画面で設定してください", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("個人情報の管理", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                      'picture/group_kids_no_dog.png',
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("地面から150cm~190cmの範囲が映るように",
                    style: const TextStyle(fontSize: 20)),
                Text("縦画面で設定してください", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("盗難対策", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 200,
                    height: 250,
                    child: Image.asset(
                      'picture/group_kids_no_dog.png',
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("地面から150cm~190cmの範囲が映るように",
                    style: const TextStyle(fontSize: 20)),
                Text("縦画面で設定してください", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page_8()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(400, 50)), //ボタンの外枠の大きさを変えるwidjet
                child: const Text("次へ", style: const TextStyle(fontSize: 15)),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
