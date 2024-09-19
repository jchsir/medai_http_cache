
import 'media_http_cache_platform_interface.dart';

class MediaHttpCache {
  Future<String?> getPlatformVersion() {
    return MediaHttpCachePlatform.instance.getPlatformVersion();
  }
}
