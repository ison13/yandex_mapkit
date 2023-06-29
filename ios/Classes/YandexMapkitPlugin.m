#import "YandexMapkitPlugin.h"
#import <yandex_mapkit_community/yandex_mapkit_community-Swift.h>

@implementation YandexMapkitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftYandexMapkitPlugin registerWithRegistrar:registrar];
}
@end
