import 'media_http_cache_platform_interface.dart';

class MediaHttpCache {
  Future<String?> getPlatformVersion() {
    return MediaHttpCachePlatform.instance.getPlatformVersion();
  }

  Future<bool?> startProxy(int port, int maxCacheLength) {
    return MediaHttpCachePlatform.instance.startProxy(port, maxCacheLength);
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

  Future<bool?> preloadMedia(String key, String url) {
    return MediaHttpCachePlatform.instance.preloadMedia(key, url);
  }

  Future<bool?> closePreloadMedia(String key) {
    return MediaHttpCachePlatform.instance.closePreloadMedia(key);
  }

  Future<bool?> closeAllPreloadMedia() {
    return MediaHttpCachePlatform.instance.closeAllPreloadMedia();
  }

  Future<bool?> deleteAllCaches() {
    return MediaHttpCachePlatform.instance.deleteAllCaches();
  }
}
