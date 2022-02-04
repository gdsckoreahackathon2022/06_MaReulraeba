import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'setting_dialog.dart';
import 'save_files_page.dart';
import 'game_page.dart';

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
        body: SafeArea(
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
                      onPressed: () => settingDialog(context),
                      icon: SvgPicture.asset('assets/images/person.svg'),
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(right: 40),
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/gear.svg'),
                    )
                  ],
                ),
                const SizedBox(height: 100),
                // 수누리말
                const Text("마를래바",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "NotoSans",
                        fontStyle: FontStyle.normal,
                        fontSize: 50.0),
                    textAlign: TextAlign.center)
                // Rectangle 4
                ,
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/Image5.png',
                  height: 172,
                ),
                const SizedBox(height: 50),
                Container(
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
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: Color(0xffd4d4d4))),
                const SizedBox(height: 28),
                SizedBox(
                  width: 350,
                  height: 72,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Colors.grey[300],
                    ),
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

                SizedBox(
                  width: 350,
                  height: 72,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Colors.grey[300],
                    ),
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
      ), // Rectangle 4
    );
  }
}
