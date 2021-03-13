#import "FlutterPayuMoneyPlugin.h"
#if __has_include(<flutter_payu_money/flutter_payu_money-Swift.h>)
#import <flutter_payu_money/flutter_payu_money-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_payu_money-Swift.h"
#endif

@implementation FlutterPayuMoneyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPayuMoneyPlugin registerWithRegistrar:registrar];
}
@end
