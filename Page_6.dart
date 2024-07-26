import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Page_7.dart';

class Page_6 extends StatelessWidget {
  //最初のページ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //主に使うやつを言えるやつ
      body: PageView(//１枚のページ内に複数のページが横並びに配置されていて、スクロールでそれらのページに遷移できる
        children: [
          Container(//１つ１つのページはコンテナ内で作成
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("スマホ設置の際の注意点", style: const TextStyle(fontSize: 20)),
                SizedBox(
                  height: 15,
                ),
                Text("画像が映る範囲の設定", style: const TextStyle(fontSize: 20)),
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
                  height: 10,
                ),
                Text("右にスワイプ→", style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("設置場所", style: const TextStyle(fontSize: 20)),
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
                  height: 10,
                ),
                Text("右にスワイプ→", style: const TextStyle(fontSize: 20)),
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
                  height: 10,
                ),
                Text("右にスワイプ→", style: const TextStyle(fontSize: 20)),
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
                  height: 10,
                ),
                Text("右にスワイプ→", style: const TextStyle(fontSize: 20)),
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
                      MaterialPageRoute(builder: (context) => Page_7()),
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
