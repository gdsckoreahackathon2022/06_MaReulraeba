import 'package:flutter/material.dart';

void settingDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('설정', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text('음향'),
                    OnOffWidget(),
                    Text('효과음'),
                    OnOffWidget(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const <Widget>[
                    Text('음향'),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.volume_mute,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    SliderWidget(),
                  ],
                ),
                const SizedBox(
                  width: 277,
                  child: Divider(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    thickness: 1.0,
                  ),
                ),
                Row(
                  children: const <Widget>[
                    Text('효과음'),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(
                      Icons.volume_mute,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    SliderWidget(),
                  ],
                ),
                const SizedBox(
                  width: 277,
                  child: Divider(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    thickness: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 124,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          primary: const Color.fromRGBO(196, 196, 196, 1),
                        ),
                        onPressed: () {
                          // Navigator.of(context).pop();
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'CANCEL',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 124,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          primary: Colors.black,
                        ),
                        onPressed: () {},
                        child: const Text('ACCEPT'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      });
}

class OnOffWidget extends StatefulWidget {
  const OnOffWidget({Key? key}) : super(key: key);

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeColor: const Color.fromRGBO(196, 196, 196, 1),
        activeTrackColor: Colors.black,
        inactiveThumbColor: Colors.black,
        inactiveTrackColor: const Color.fromRGBO(196, 196, 196, 1),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 20.0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        // trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 18.4,
        // thumbShape: SliderComponentShape.noThumb
      ),
      child: SizedBox(
        width: 250,
        child: Slider(
          activeColor: Colors.black,
          thumbColor: Colors.black,
          inactiveColor: const Color.fromRGBO(196, 196, 196, 1),
          min: 0.0,
          max: 100.0,
          value: _value,
          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );

    // return Slider(
    //   activeColor: Colors.black,
    //   thumbColor: Colors.black,
    //   inactiveColor: const Color.fromRGBO(196, 196, 196, 1),
    //   min: 0.0,
    //   max: 100.0,
    //   value: _value,
    //   onChanged: (double value) {
    //     setState(() {
    //       _value = value;
    //     });
    //   },
    // );
  }
}
