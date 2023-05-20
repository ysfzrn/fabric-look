// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef FabricLookViewNativeComponent_h
#define FabricLookViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface FabricLookView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* FabricLookViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
