import 'package:flutter/material.dart';
import 'dart:convert';
import 'map.dart';

import 'package:flutter/services.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc4c4c4),
      appBar: AppBar(
        title: const Text(
          '이유진',
          style: TextStyle(
              color: Color(0xff181818),
              fontWeight: FontWeight.w500,
              fontFamily: "NotoSansCJKKR",
              fontStyle: FontStyle.normal,
              fontSize: 18.0),
        ),
        elevation: 0.0,
        backgroundColor: const Color(0xffffffff),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: const Pushtalk(),
    );
  }
}

class Pushtalk extends StatefulWidget {
  const Pushtalk({Key? key}) : super(key: key);
  Future<void> readJson() async {
    final String res = await rootBundle.loadString('assets/json/main.json');
    final jsonResponse = json.decode(res);
    print(jsonResponse);
  }

  @override
  _PushtalkState createState() => _PushtalkState();
}

class _PushtalkState extends State<Pushtalk> {
  /* final List<String> _list = [
    '와... 망했다',
    '엣헴. 앞으로 수업 시작 후 15분을 넘기지 않으면  결석이 아닌 출석 처리를 해주겠다'
  ];*/

  Map<String, dynamic> jsonMap = json.decode(jstr);

  List<Widget> messageList = [];

  List<String> ll = ['AAA', 'BBB', 'CCC'];
  // var l = readJson();

  int idx = 0;
  String before = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc4c4c4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 날짜 시작
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 32.6, 0.0, 0.0),
                  width: 125,
                  height: 0.4,
                  decoration: BoxDecoration(color: const Color(0xff323232))),
              // 2022년 01월 28일 금요일
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 32.6, 0.0, 0.0),
                child: Text("2022년 01월 28일 금요일",
                    style: const TextStyle(
                        color: const Color(0xff181818),
                        fontWeight: FontWeight.w300,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0),
                    textAlign: TextAlign.center),
              ),
              //오른쪽 직선
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 32.6, 16.0, 0.0),
                  width: 125,
                  height: 0.4,
                  decoration: BoxDecoration(color: const Color(0xff323232))),
            ],
          ),
          Row(
            children: [
              // Ellipse 2
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 33.0, 0.0, 0.0),
                  width: 63,
                  height: 63,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: const Color(0xff000000),
                          width: 2.7300000190734863),
                      color: const Color(0xffffffff))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(32.0, 33.0, 0.0, 0.0),
                    child: Text("이유진",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),
                  ),
                  // Union
                  Container(
                      child: Text("hello"),
                      margin: EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
                      width: 261,
                      height: 36,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff000000),
                              width: 2.7300000190734863),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xff000000),
                                offset: Offset(
                                    2.7300000190734863, 2.7300000190734863),
                                blurRadius: 0,
                                spreadRadius: 0)
                          ],
                          color: const Color(0xffffffff)))
                ],
              )
            ],
          ),
          Column(
            children: messageList,
          )
        ],
      ),
      //버튼 아이콘
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff000000),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), //모서리를 둥글게
              side: BorderSide(width: 2.7300000190734863)),
          backgroundColor: Color(0xffffffff),
          onPressed: () {
            var data = jsonMap['data'][idx];
            switch (data['type']) {
              case 'receive':
                if (before != "chat") {

                }
                messageList.add(messageBox(message: data['message']));
                before = "chat";
                break;
              case 'scene':
                
                messageList = [];
                messageList.add(Container(
                  width: 428,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ));
                // 이미지, 메시지 띄우기
                before = "scene";
                break;
              case 'sheetup':
                // 3가지 선택지를 갖는 시트 띄우고
                // 누르면 대답 상자 띄워주는 버튼 3개 생성
                // 버튼 누르면 시트 다운되게

                break;

              // 이미지, message 띄우기
            }
            idx += 1;
            setState(() {});
          }),
    );
  }
}

class messageBox extends StatelessWidget {
  final String message;
  const messageBox({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(message),
        margin: EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
        width: 261,
        height: 36,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color(0xff000000), width: 2.7300000190734863),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff000000),
                  offset: Offset(2.7300000190734863, 2.7300000190734863),
                  blurRadius: 0,
                  spreadRadius: 0)
            ],
            color: const Color(0xffffffff)));
  }
}


class ChattingPage extends StatefulWidget {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return 
  }
}
}