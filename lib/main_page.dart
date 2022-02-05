import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'setting_dialog.dart';
import 'save_files_page.dart';
// import 'game_page.dart';
import 'message_box.dart';
import 'bottom_sheet.dart';
import 'my_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void flutterDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: const Text("Setting"),
            content: Column(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // print(MaterialLocalizations.of(context));
    return MaterialApp(
      title: 'Figma to Flutter',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/temp.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.7,
            ),
          ),
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.only(left: 40),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPage(),
                            ),
                          );
                        },
                        icon: SvgPicture.asset('assets/images/person.svg'),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(right: 40),

                        onPressed: () => settingDialog(context),

                        icon: SvgPicture.asset('assets/images/gear.svg'),
                      )
                    ],
                  ),
                  const SizedBox(height: 100),
                  // 수누리말

                  Column(
                    children: [
                      Text("MaReulraeba",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NIXGONFONTSV2.0-M",
                              fontStyle: FontStyle.normal,
                              fontSize: 26.0),
                          textAlign: TextAlign.center), // 마를래바
                      Text("마를래바",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NIXGONFONTSV2.0-M",
                              fontStyle: FontStyle.normal,
                              fontSize: 50.0),
                          textAlign: TextAlign.center)
                    ],
                  ),

                  const SizedBox(height: 222),
                  Container(
                    //   margin: EdgeInsets.fromLTRB(0.0, 348.0, 0.0, 0.0),
                    child: const Align(
                      alignment: Alignment.center,
                      child: // 게임시작
                          Text("게임시작",
                              style: TextStyle(
                                  color: Color(0xff181818),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Helvetica",
                                  // fontStyle: FontStyle.oblique,
                                  fontSize: 24.0),
                              textAlign: TextAlign.center),
                    ),
                    width: 350,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: const Color(0xff000000),
                          width: 2.7300000190734863),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000),
                            offset:
                                Offset(2.7300000190734863, 2.7300000190734863),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ],
                      color: const Color(0xffe0a973),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 350,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: const Color(0xff000000),
                          width: 2.7300000190734863),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000),
                            offset:
                                Offset(2.7300000190734863, 2.7300000190734863),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: Color(0xffe0a973)),

                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Chat()));
                      },
                      child: const Text("튜토리얼",
                          style: TextStyle(
                              color: Color(0xff181818),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Helvetica",
                              // fontStyle: FontStyle.oblique,
                              fontSize: 24.0),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 350,
                    height: 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        color: const Color(0xfff6e0b4)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          primary: Color(0xffe0a973)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SaveFilesPage()));
                      },
                      child: const Text("이어하기",
                          style: TextStyle(
                              color: Color(0xff181818),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Helvetica",
                              // fontStyle: FontStyle.oblique,
                              fontSize: 24.0),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ), // Rectangle 4
    );
  }
}
