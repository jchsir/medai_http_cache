import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:media_http_cache/media_http_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _mediaHttpCachePlugin = MediaHttpCache();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await _mediaHttpCachePlugin.getPlatformVersion() ??
          'Unknown platform version';
      bool result =
          await _mediaHttpCachePlugin.startProxy(10086, 1000000000) ?? false;
      // String url = await _mediaHttpCachePlugin.getProxyURLWithOriginalURL(
      //         'https://v.fluffyelements.com/episode/003/003021.mp4', false) ??
      //     '';

      bool url = await _mediaHttpCachePlugin.preloadMedia('ajskhdjaskhdja',
              'https://v.fluffyelements.com/episode/003/003021.mp4') ??
          false;
      print('========== $result $url');
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
