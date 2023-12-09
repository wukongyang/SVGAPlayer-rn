//
//  RNSvgaEvents.h
//  RNSvgaPlayer
//


@interface RNSvgaEvents:NSObject
    @property (nonatomic, readonly) int kReactOnLoadingEndIdentifier;

    - (instancetype)initWithIdentifier:(int)onLoadingEndIdentifier;
    - (RCTBubblingEventBlock)onLoadingEnd;
@end
