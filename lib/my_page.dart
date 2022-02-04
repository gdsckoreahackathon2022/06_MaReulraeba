import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String user_name = "김영희";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: const Text('MY PAGE',
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 2.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: const AssetImage('assets/ogu.png'),
                      backgroundColor: Colors.grey[400],
                      radius: 38.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text("이름 수정"),
                                content: TextField(
                                    //decoration:InputDecoration(labelText: "Name"),
                                    autofocus: true,
                                    onChanged: (value) {
                                      setState(() => user_name = value);
                                    }),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("확인"))
                                ]);
                          });
                    },
                    child: Container(
                        child: Text(user_name,
                            style: const TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSans",
                                fontStyle: FontStyle.normal,
                                fontSize: 18.0),
                            textAlign: TextAlign.center),
                        width: 100,
                        height: 28,
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Colors.black,
                          )),
                          //color: Color(0xffc4c4c4)
                        )),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // onTap
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/picture2.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(builder:
                        // (context) => NextPage()),
                        // );
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xff949494),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // onTap
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xff949494),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // onTap
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xff949494),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // onTap
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xff949494),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // onTap
                      },
                      child: Container(
                        width: 184,
                        height: 184,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffc4c4c4)),
                        child: Icon(
                          Icons.lock_outline,
                          color: Color(0xff949494),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
