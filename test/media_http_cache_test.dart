import 'package:flutter_test/flutter_test.dart';
import 'package:media_http_cache/media_http_cache.dart';
import 'package:media_http_cache/media_http_cache_platform_interface.dart';
import 'package:media_http_cache/media_http_cache_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMediaHttpCachePlatform
    with MockPlatformInterfaceMixin
    implements MediaHttpCachePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MediaHttpCachePlatform initialPlatform = MediaHttpCachePlatform.instance;

  test('$MethodChannelMediaHttpCache is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMediaHttpCache>());
  });

  test('getPlatformVersion', () async {
    MediaHttpCache mediaHttpCachePlugin = MediaHttpCache();
    MockMediaHttpCachePlatform fakePlatform = MockMediaHttpCachePlatform();
    MediaHttpCachePlatform.instance = fakePlatform;

    expect(await mediaHttpCachePlugin.getPlatformVersion(), '42');
  });
}
