import 'package:flutter/material.dart';

class SaveFilesPage extends StatelessWidget {
  const SaveFilesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "이어하기",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              SizedBox(
                height: 50,
              ),
              SavedBox(title: "Hello"),
              SavedBox(title: "Hello"),
              SavedBox(title: "Helloz"),
              SavedBox(title: "Helloz"),
              SavedBox(title: "Hello"),
              SavedBox(title: "Hellozzz"),
              SavedBox(title: "Hello"),
              SavedBox(title: "Hellozzzz"),
              SavedBox(title: "Hello"),
              SavedBox(title: "Hellssso"),
            ],
          ),
        ),
      ),
    );
  }
}

class SavedBox extends StatelessWidget {
  final String title;
  const SavedBox({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 17,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            print(title);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 40),
            height: 100,
            width: 400,
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("STAGE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                      height: 75,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "●   2022-02-04 12:00:04",
                          style: TextStyle(fontSize: 14),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "●   영희의 방 ----",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
