import 'package:flutter/material.dart';

class ObserverTest extends StatefulWidget {
  @override
  _ObserverTestState createState() => _ObserverTestState();
}

class _ObserverTestState extends State<ObserverTest>
    with WidgetsBindingObserver {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState appLifecycleState) {
    print('didChangeAppLifecycleState $appLifecycleState');
  }

  @override
  Widget build(BuildContext context) {
    print('build _ObserverTestState');
    return Container(
      color: Colors.yellow,
    );
  }
}
