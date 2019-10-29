import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanTest extends StatelessWidget {
  RegExp webUrlRegExp = RegExp(
      r"(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\\+~#=]{2,256}\.[a-z]{2,6}\b"
      r"([-a-zA-Z0-9@:%_\\+.~#?&//=]*)");
  String messageTest = '欢迎访问我们新建的网址 https://www.baidu.com/xxx/xx 点击这个地址就能立刻访问';

  @override
  Widget build(BuildContext context) {
    Iterable<Match> matches = webUrlRegExp.allMatches(messageTest);
    print('regexp test $matches');
    for (Match m in matches) {
      String match = m.group(0);
      print(match);
    }
    print('end regexp test');
    return Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Center(
            child: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text:
                  'GitHub is a development platform inspired by the way you work. From ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: 'open source open source open source open source '
                    'open source open source',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  print('tap link');
                    // open desired screen
                  }),
            TextSpan(
                text: ' to ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'business,',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  print('tap link2 ');
                    // open desired screen
                  }),
            TextSpan(
                text:
                    ' you can host and review code, manage projects, and build software alongside 36 million developers.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))
          ]),
        )));
  }
}
