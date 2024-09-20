import 'media_http_cache_platform_interface.dart';

class MediaHttpCache {
  Future<String?> getPlatformVersion() {
    return MediaHttpCachePlatform.instance.getPlatformVersion();
  }

  Future<bool?> startProxy(int port) {
    return MediaHttpCachePlatform.instance.startProxy(port);
  }

  Future<bool?> stopProxy() {
    return MediaHttpCachePlatform.instance.stopProxy();
  }

  Future<bool?> proxyIsRunning() {
    return MediaHttpCachePlatform.instance.proxyIsRunning();
  }

  Future<String?> getProxyURLWithOriginalURL(
      String originalUrl, bool bindToLocalhost) {
    return MediaHttpCachePlatform.instance
        .getProxyURLWithOriginalURL(originalUrl, bindToLocalhost);
  }
}
