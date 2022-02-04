import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff898989),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text("Bottom Sheet"),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 280,
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: const Color(0xffffffff),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.expand_more),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Container(
                              height: 250,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // onTap
                                      },
                                      child: Container(
                                        alignment: Alignment(0, 0),
                                        child: Text("어떻게 하지...",
                                            textAlign: TextAlign.center),
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        width: 350,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          border: Border.all(
                                              color: const Color(0xff000000),
                                              width: 2.7300000190734863),
                                          boxShadow: [
                                            BoxShadow(
                                                color: const Color(0xff000000),
                                                offset: Offset(
                                                    2.7300000190734863,
                                                    2.7300000190734863),
                                                blurRadius: 0,
                                                spreadRadius: 0),
                                          ],
                                          color: const Color(0xffc4c4c4),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // onTap
                                      },
                                      child: Container(
                                        alignment: Alignment(0, 0),
                                        child: Text("어떻게 하지...",
                                            textAlign: TextAlign.center),
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        width: 350,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          border: Border.all(
                                              color: const Color(0xff000000),
                                              width: 2.7300000190734863),
                                          boxShadow: [
                                            BoxShadow(
                                                color: const Color(0xff000000),
                                                offset: Offset(
                                                    2.7300000190734863,
                                                    2.7300000190734863),
                                                blurRadius: 0,
                                                spreadRadius: 0),
                                          ],
                                          color: const Color(0xffc4c4c4),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // onTap
                                      },
                                      child: Container(
                                        alignment: Alignment(0, 0),
                                        child: Text("어떻게 하지...",
                                            textAlign: TextAlign.center),
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        width: 350,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          border: Border.all(
                                              color: const Color(0xff000000),
                                              width: 2.7300000190734863),
                                          boxShadow: [
                                            BoxShadow(
                                                color: const Color(0xff000000),
                                                offset: Offset(
                                                    2.7300000190734863,
                                                    2.7300000190734863),
                                                blurRadius: 0,
                                                spreadRadius: 0),
                                          ],
                                          color: const Color(0xffc4c4c4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
