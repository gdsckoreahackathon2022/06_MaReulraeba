import 'package:flutter/material.dart';

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '철수의 방',
            style: const TextStyle(
                color: const Color(0xff181818),
                fontWeight: FontWeight.w500,
                fontFamily: "NotoSansCJKKR",
                fontStyle: FontStyle.normal,
                fontSize: 18.0),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xffffffff),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {},
          ),
          foregroundColor: Colors.black,
        ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 430,
              //height: 549,
              decoration: const BoxDecoration(color: const Color(0x26000000)),
            ),
            //아래 화살표v
            IconButton(
              icon: Icon(Icons.expand_more),
              onPressed: () => Navigator.pop(context),
            ),
            // 프로필
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ellipse 2
                Container(
                    margin: EdgeInsets.fromLTRB(16.0, 12.0, 0.0, 0.0),
                    width: 63,
                    height: 63,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff000000),
                            width: 2.7300000190734863),
                        borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0, 4),
                              blurRadius: 2,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffc4c4c4))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //김철수
                      margin: EdgeInsets.fromLTRB(18.0, 30.0, 251.0, 10.0),
                      child: Text(
                        '김철수',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0),
                      ),
                    ),

                    // 갑자기 연락이 왔다.
                    Container(
                      margin: EdgeInsets.fromLTRB(18.0, 0.0, 103.0, 49.0),
                      child: Text('갑자기 연락이 왔다.',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0),
                          textAlign: TextAlign.left),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
