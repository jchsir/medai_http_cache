import 'dart:ffi';

// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'media_http_cache_method_channel.dart';

abstract class MediaHttpCachePlatform {
  static final MediaHttpCachePlatform _instance = MethodChannelMediaHttpCache();

  static MediaHttpCachePlatform get instance => _instance;

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> startProxy(int port) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> stopProxy() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> proxyIsRunning() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getProxyURLWithOriginalURL(
      String originalUrl, bool bindToLocalhost) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
