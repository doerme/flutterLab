#import "AssetTestPlugin.h"
#import <asset_test/asset_test-Swift.h>

@implementation AssetTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAssetTestPlugin registerWithRegistrar:registrar];
}
@end
