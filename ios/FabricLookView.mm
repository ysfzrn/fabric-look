#ifdef RCT_NEW_ARCH_ENABLED
#import "FabricLookView.h"

#import <react/renderer/components/RNFabricLookViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNFabricLookViewSpec/EventEmitters.h>
#import <react/renderer/components/RNFabricLookViewSpec/Props.h>
#import <react/renderer/components/RNFabricLookViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface FabricLookView () <RCTFabricLookViewViewProtocol>

@end

@implementation FabricLookView {
    UIView * _view;
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

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<FabricLookViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<FabricLookViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> FabricLookViewCls(void)
{
    return FabricLookView.class;
}

@end
#endif
