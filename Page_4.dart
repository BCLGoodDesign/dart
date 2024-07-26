import 'package:flutter/material.dart';
import 'Page_5.dart';

/// Flutter code sample for [Radio].

class Page_4 extends StatelessWidget {
  const Page_4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("基本情報の登録", style: const TextStyle(fontSize: 20)),
            SizedBox(
              height: 40,
            ),
            Container(
                //conteinerを用いて、中のtextを左側に
                alignment: Alignment.centerLeft, //任意のプロパティ
                child: Text(
                  "ご利用の目的",
                  style: const TextStyle(fontSize: 15),
                )),
            riyoumokuteki(),
            SizedBox(
              height: 15,
            ),
            Container(
                //conteinerを用いて、中のtextを左側に
                alignment: Alignment.centerLeft, //任意のプロパティ
                child: Text(
                  "（サービス名）を知ったきっかけ",
                  style: const TextStyle(fontSize: 15),
                )),
            kikkake(),
          ],
        ),
      ),
    );
  }
}

enum radio_bottun_name {
  genzairyou,
  kokyaku,
  marketing,
  syouhin,
  sns,
  tijin,
  koukoku,
  sonota
}

class riyoumokuteki extends StatefulWidget { //１つ目のラジオボタンのクラス
  const riyoumokuteki({super.key});

  @override
  State<riyoumokuteki> createState() => _riyoumokutekiState();
}

class _riyoumokutekiState extends State<riyoumokuteki> {
  radio_bottun_name? questionnaire = radio_bottun_name.genzairyou;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
          child: ListTile(//listtile内にアンケート情報を入れる
            title: const Text(
              '原材料の発注の際に役立てたい',
            ),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.genzairyou,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('顧客の利用状況を把握したい'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.kokyaku,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('マーケティングに活用したい'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.marketing,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('商品企画に活用したい'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.syouhin,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class kikkake extends StatefulWidget {
  const kikkake({super.key});

  @override
  State<kikkake> createState() => _kikkakeState();
}

class _kikkakeState extends State<kikkake> {
  radio_bottun_name? questionnaire = radio_bottun_name.genzairyou;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('sns'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.sns,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('知人の紹介'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.tijin,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('広告'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.koukoku,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text('その他'),
            leading: Radio<radio_bottun_name>(
              value: radio_bottun_name.sonota,
              groupValue: questionnaire,
              onChanged: (radio_bottun_name? value) {
                setState(() {
                  questionnaire = value;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page_5()),
            );
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(400, 50)), //ボタンの外枠の大きさを変えるwidjet
          child: const Text("次へ", style: const TextStyle(fontSize: 15)),
        ),
      ],
    );
  }
}
