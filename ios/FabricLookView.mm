#ifdef RCT_NEW_ARCH_ENABLED
#import "FabricLookView.h"

#import <React/RCTConversions.h>
#import <RCTTypeSafety/RCTConvertHelpers.h>


#import <react/renderer/components/RNFabricLookViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNFabricLookViewSpec/EventEmitters.h>
#import <react/renderer/components/RNFabricLookViewSpec/Props.h>
#import <react/renderer/components/RNFabricLookViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "react-native-fabric-look-Swift.h"

using namespace facebook::react;

@interface FabricLookView () <RCTFabricLookViewViewProtocol>

@end

@implementation FabricLookView {
    FabricLookComponent * _view;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}


+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<FabricLookViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const FabricLookViewProps>();
    _props = defaultProps;

    _view = [[FabricLookComponent alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<FabricLookViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<FabricLookViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        [_view setColor:RCTNSStringFromString(newViewProps.color)];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> FabricLookViewCls(void)
{
    return FabricLookView.class;
}

@end
#endif
