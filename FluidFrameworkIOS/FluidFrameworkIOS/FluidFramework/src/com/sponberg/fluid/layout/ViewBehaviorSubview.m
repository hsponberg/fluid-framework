//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewBehaviorSubview.java
//

#include "IOSClass.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/layout/DataModelManager.h"
#include "com/sponberg/fluid/layout/Layout.h"
#include "com/sponberg/fluid/layout/PrecomputeLayoutManager.h"
#include "com/sponberg/fluid/layout/View.h"
#include "com/sponberg/fluid/layout/ViewBehavior.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSubview.h"
#include "com/sponberg/fluid/layout/ViewPosition.h"
#include "com/sponberg/fluid/util/KeyValueList.h"
#include "java/lang/Double.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Collection.h"

@implementation FFTViewBehaviorSubview

- (id)initWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  if (self = [super initWithNSString:FFTViewBehavior_get_subview_() withFFTKeyValueList:properties]) {
    self->subview_ViewBehaviorSubview_ = [FFTViewBehavior getStringPropertyWithNSString:@"subview" withNSString:nil withFFTKeyValueList:properties];
    self->key_ = [FFTViewBehavior getStringPropertyWithNSString:@"key" withNSString:nil withFFTKeyValueList:properties];
    if (self->key_ != nil) {
      keyPrefix_ = ([key_ isEqual:@"."]) ? @"" : [NSString stringWithFormat:@"%@.", key_];
    }
    else {
      keyPrefix_ = @"";
    }
  }
  return self;
}

- (BOOL)supportsHeightCompute {
  return YES;
}

- (float)computeHeightWithBoolean:(BOOL)landscape
                     withNSString:(NSString *)dataModelPrefix
                      withFFTView:(FFTView *)view
                      withBoolean:(BOOL)useCache {
  JavaLangDouble *width = [((FFTView *) nil_chk(view)) getWidth];
  if (width == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"View's width must be set before calling computeHeight"];
  }
  if (dataModelPrefix == nil || [dataModelPrefix isEqual:@""]) {
    dataModelPrefix = keyPrefix_;
  }
  else if (![((NSString *) nil_chk(keyPrefix_)) isEqual:@""]) {
    dataModelPrefix = [NSString stringWithFormat:@"%@%@", dataModelPrefix, [NSString stringWithFormat:@".%@", keyPrefix_]];
  }
  return (float) [((FFTLayout *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getLayoutWithNSString:subview_ViewBehaviorSubview_])) calculateHeightWithBoolean:landscape withFloat:[((JavaLangDouble *) nil_chk(width)) floatValue] withNSString:dataModelPrefix withBoolean:useCache];
}

- (void)precomputeViewPositionsWithBoolean:(BOOL)landscape
                              withNSString:(NSString *)precomputePrefix
                       withFFTViewPosition:(FFTViewPosition *)view
                              withNSString:(NSString *)viewPathPrefixView
                    withJavaUtilCollection:(id<JavaUtilCollection>)newViewPositions {
  NSString *layoutId = [((FFTViewBehaviorSubview *) nil_chk(((FFTViewBehaviorSubview *) check_class_cast([((FFTViewPosition *) nil_chk(view)) getViewBehavior], [FFTViewBehaviorSubview class])))) getSubview];
  FFTLayout *subviewLayout = [((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getLayoutWithNSString:layoutId];
  if ([((FFTLayout *) nil_chk(subviewLayout)) isPrecomputedPositions]) {
    NSString *precomputePrefixView = [FFTDataModelManager getFullKeyWithNSString:precomputePrefix withNSString:[view getKey]];
    [FFTPrecomputeLayoutManager precomputeViewPositionsForWithFFTLayout:subviewLayout withBoolean:landscape withNSString:viewPathPrefixView withNSString:precomputePrefixView withFFTViewPosition:view withFFTTableRowWithIdAndHeight:nil withJavaUtilCollection:newViewPositions];
  }
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ViewBehaviorSubview(subview=%@, key=%@, keyPrefix=%@)", [self getSubview], [self getKey], [self getKeyPrefix]];
}

- (NSString *)getSubview {
  return self->subview_ViewBehaviorSubview_;
}

- (NSString *)getKey {
  return self->key_;
}

- (NSString *)getKeyPrefix {
  return self->keyPrefix_;
}

- (void)setSubviewWithNSString:(NSString *)subview {
  self->subview_ViewBehaviorSubview_ = subview;
}

- (void)copyAllFieldsTo:(FFTViewBehaviorSubview *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->keyPrefix_ = keyPrefix_;
  other->subview_ViewBehaviorSubview_ = subview_ViewBehaviorSubview_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithFFTKeyValueList:", "ViewBehaviorSubview", NULL, 0x1, NULL },
    { "supportsHeightCompute", NULL, "Z", 0x4, NULL },
    { "computeHeightWithBoolean:withNSString:withFFTView:withBoolean:", "computeHeight", "F", 0x1, NULL },
    { "precomputeViewPositionsWithBoolean:withNSString:withFFTViewPosition:withNSString:withJavaUtilCollection:", "precomputeViewPositions", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getSubview", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getKeyPrefix", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setSubviewWithNSString:", "setSubview", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "subview_ViewBehaviorSubview_", "subview", 0x2, "Ljava.lang.String;", NULL,  },
    { "key_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
    { "keyPrefix_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTViewBehaviorSubview = { "ViewBehaviorSubview", "com.sponberg.fluid.layout", NULL, 0x1, 9, methods, 3, fields, 0, NULL};
  return &_FFTViewBehaviorSubview;
}

@end