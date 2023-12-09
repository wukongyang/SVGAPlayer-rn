
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "SVGAPlayerManager.h"
#import "RNSvgaEvents.h"



@implementation RNSvgaEvents

- (instancetype)initWithIdentifier:(int)onLoadingEndIdentifier {
    self = [super init];
    if (self) {
        // Инициализация объекта
        _kReactOnLoadingEndIdentifier = onLoadingEndIdentifier;
    }
    return self;
}


- (RCTBubblingEventBlock)onLoadingEnd {
    return objc_getAssociatedObject(self, &_kReactOnLoadingEndIdentifier);
}

@end
