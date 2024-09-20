import 'dart:ffi';

// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'media_http_cache_method_channel.dart';

abstract class MediaHttpCachePlatform {
  static final MediaHttpCachePlatform _instance = MethodChannelMediaHttpCache();

  static MediaHttpCachePlatform get instance => _instance;

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> startProxy(int port, int maxCacheLength) {
    throw UnimplementedError('startProxy() has not been implemented.');
  }

  Future<bool?> stopProxy() {
    throw UnimplementedError('stopProxy() has not been implemented.');
  }

  Future<bool?> proxyIsRunning() {
    throw UnimplementedError('proxyIsRunning() has not been implemented.');
  }

  Future<String?> getProxyURLWithOriginalURL(
      String originalUrl, bool bindToLocalhost) {
    throw UnimplementedError(
        'getProxyURLWithOriginalURL() has not been implemented.');
  }

  Future<bool?> preloadMedia(String key, String url) {
    throw UnimplementedError('preloadMedia() has not been implemented.');
  }

  Future<bool?> closePreloadMedia(String key) {
    throw UnimplementedError('closePreloadMedia() has not been implemented.');
  }

  Future<bool?> closeAllPreloadMedia() {
    throw UnimplementedError(
        'closeAllPreloadMedia() has not been implemented.');
  }
}
