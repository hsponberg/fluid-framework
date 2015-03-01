//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/parser/TabParser.java
//

#include "IOSObjectArray.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/layout/Tab.h"
#include "com/sponberg/fluid/layout/ViewManager.h"
#include "com/sponberg/fluid/parser/TabParser.h"
#include "com/sponberg/fluid/util/KVLReader.h"
#include "com/sponberg/fluid/util/KeyValueList.h"
#include "com/sponberg/fluid/util/StringUtil.h"
#include "java/util/List.h"

@implementation FFTTabParser

- (void)initialize__WithFFTFluidApp:(FFTFluidApp *)app {
  for (id<FFTKeyValueList> __strong tabProps in nil_chk([((FFTKVLReader *) nil_chk([((FFTFluidApp *) nil_chk(app)) getSettings])) getWithNSString:@"tabs"])) {
    FFTTab *tab = [[FFTTab alloc] init];
    [tab setTabIdWithNSString:[((id<FFTKeyValueList>) nil_chk(tabProps)) getValue]];
    NSString *label = [tabProps containsWithNSString:@"label"] ? [tabProps getValueWithNSString:@"label"] : [tab getTabId];
    [tab setLabelWithNSString:[FFTStringUtil processEscapesWithNSString:label]];
    [tab setScreenIdWithNSString:[tabProps getValueWithNSString:@"screen"]];
    if ([tabProps containsWithNSString:@"ios-icon"]) {
      [tab setImageWithNSString:[tabProps getValueWithNSString:@"ios-icon"]];
    }
    [((FFTViewManager *) nil_chk([app getViewManager])) addTabWithFFTTab:tab];
  }
}

- (IOSObjectArray *)getSupportedPlatforms {
  return nil;
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initialize__WithFFTFluidApp:", "initialize", "V", 0x1, NULL },
    { "getSupportedPlatforms", NULL, "[Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _FFTTabParser = { "TabParser", "com.sponberg.fluid.parser", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_FFTTabParser;
}

@end