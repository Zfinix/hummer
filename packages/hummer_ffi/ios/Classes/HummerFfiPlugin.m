#import "HummerFfiPlugin.h"
#if __has_include(<hummer_ffi/hummer_ffi-Swift.h>)
#import <hummer_ffi/hummer_ffi-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hummer_ffi-Swift.h"
#endif

@implementation HummerFfiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHummerFfiPlugin registerWithRegistrar:registrar];
}
@end
