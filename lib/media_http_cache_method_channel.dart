import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'media_http_cache_platform_interface.dart';

class MethodChannelMediaHttpCache extends MediaHttpCachePlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('media_http_cache');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> startProxy(int port, int maxCacheLength) async {
    final result = await methodChannel
        .invokeMethod<bool>('startProxy', [port, maxCacheLength]);
    return result;
  }

  @override
  Future<bool?> stopProxy() async {
    final result = await methodChannel.invokeMethod<bool>('stopProxy');
    return result;
  }

  @override
  Future<bool?> proxyIsRunning() async {
    final result = await methodChannel.invokeMethod<bool>('proxyIsRunning');
    return result;
  }

  @override
  Future<String?> getProxyURLWithOriginalURL(
      String originalUrl, bool bindToLocalhost) async {
    final result = await methodChannel.invokeMethod<String>(
        'getProxyURLWithOriginalURL', [originalUrl, bindToLocalhost]);
    return result;
  }

  @override
  Future<bool?> preloadMedia(String key, String url) async {
    final result =
        await methodChannel.invokeMethod<bool>('preloadMedia', [key, url]);
    return result;
  }

  @override
  Future<bool?> closePreloadMedia(String key) async {
    final result =
        await methodChannel.invokeMethod<bool>('closePreloadMedia', key);
    return result;
  }

  @override
  Future<bool?> closeAllPreloadMedia() async {
    final result =
        await methodChannel.invokeMethod<bool>('closeAllPreloadMedia');
    return result;
  }
}
