import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'media_http_cache_method_channel.dart';

abstract class MediaHttpCachePlatform extends PlatformInterface {
  /// Constructs a MediaHttpCachePlatform.
  MediaHttpCachePlatform() : super(token: _token);

  static final Object _token = Object();

  static MediaHttpCachePlatform _instance = MethodChannelMediaHttpCache();

  /// The default instance of [MediaHttpCachePlatform] to use.
  ///
  /// Defaults to [MethodChannelMediaHttpCache].
  static MediaHttpCachePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MediaHttpCachePlatform] when
  /// they register themselves.
  static set instance(MediaHttpCachePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
