import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'media_http_cache_platform_interface.dart';

/// An implementation of [MediaHttpCachePlatform] that uses method channels.
class MethodChannelMediaHttpCache extends MediaHttpCachePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('media_http_cache');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
