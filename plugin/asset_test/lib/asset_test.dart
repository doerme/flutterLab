import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetTest {
  static const MethodChannel _channel = const MethodChannel('asset_test');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

class AssetsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
      child: Image.asset('lib/assets/icon/ic_close.png', package: 'asset_test',
        height: 100, width: 100,),
    );
  }
}
