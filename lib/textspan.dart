import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Center(
            child: RichText(
          text: TextSpan(
              text:
                  'GitHub is a development platform inspired by the way you work. From ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
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
