//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/parser/ViewBehaviorFactory.java
//

#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/layout/TableLayout.h"
#include "com/sponberg/fluid/layout/ViewBehavior.h"
#include "com/sponberg/fluid/layout/ViewBehaviorButton.h"
#include "com/sponberg/fluid/layout/ViewBehaviorImage.h"
#include "com/sponberg/fluid/layout/ViewBehaviorLabel.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSearchbar.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSegmentedControl.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSpace.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSubview.h"
#include "com/sponberg/fluid/layout/ViewBehaviorSubviewRepeat.h"
#include "com/sponberg/fluid/layout/ViewBehaviorTable.h"
#include "com/sponberg/fluid/layout/ViewBehaviorTextfield.h"
#include "com/sponberg/fluid/layout/ViewBehaviorURLWebView.h"
#include "com/sponberg/fluid/layout/ViewBehaviorWebView.h"
#include "com/sponberg/fluid/layout/ViewManager.h"
#include "com/sponberg/fluid/parser/RowProviderRowLayout.h"
#include "com/sponberg/fluid/parser/RowProviderTableLayout.h"
#include "com/sponberg/fluid/parser/ViewBehaviorFactory.h"
#include "com/sponberg/fluid/util/KeyValueList.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

@implementation FFTViewBehaviorFactory

NSString * FFTViewBehaviorFactory_SEGMENTED_CONTROL_ = @"segmented-control";
NSString * FFTViewBehaviorFactory_SEARCHBAR_ = @"searchbar";
NSString * FFTViewBehaviorFactory_TEXTFIELD_ = @"textfield";
NSString * FFTViewBehaviorFactory_URL_WEBVIEW_ = @"url-webview";
NSString * FFTViewBehaviorFactory_WEBVIEW_ = @"webview";
NSString * FFTViewBehaviorFactory_SUBVIEW_REPEAT_ = @"subview-repeat";
NSString * FFTViewBehaviorFactory_SUBVIEW_ = @"subview";
NSString * FFTViewBehaviorFactory_IMAGE_ = @"image";
NSString * FFTViewBehaviorFactory_SPACE_ = @"space";
NSString * FFTViewBehaviorFactory_TABLE_ = @"table";
NSString * FFTViewBehaviorFactory_BUTTON_ = @"button";
NSString * FFTViewBehaviorFactory_LABEL_ = @"label";

- (id)init {
  if (self = [super init]) {
    viewBehaviorBuilders_ = [[JavaUtilHashMap alloc] init];
    [self registerDefaults];
  }
  return self;
}

- (void)register__WithNSString:(NSString *)key
withFFTViewBehaviorFactory_ViewBehaviorBuilder:(id<FFTViewBehaviorFactory_ViewBehaviorBuilder>)builder {
  (void) [((JavaUtilHashMap *) nil_chk(viewBehaviorBuilders_)) putWithId:key withId:builder];
}

- (FFTViewBehavior *)getViewBehaviorWithNSString:(NSString *)key
                             withFFTKeyValueList:(id<FFTKeyValueList>)properties {
  id<FFTViewBehaviorFactory_ViewBehaviorBuilder> builder = [((JavaUtilHashMap *) nil_chk(viewBehaviorBuilders_)) getWithId:key];
  if (builder == nil) {
    return nil;
  }
  return [((id<FFTViewBehaviorFactory_ViewBehaviorBuilder>) nil_chk(builder)) buildWithFFTKeyValueList:properties];
}

- (void)registerDefaults {
  [self register__WithNSString:FFTViewBehaviorFactory_LABEL_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$1 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_BUTTON_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$2 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_TABLE_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$3 alloc] initWithFFTViewBehaviorFactory:self]];
  [self register__WithNSString:FFTViewBehaviorFactory_SPACE_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$4 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_IMAGE_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$5 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_SUBVIEW_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$6 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_SUBVIEW_REPEAT_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$7 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_WEBVIEW_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$8 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_URL_WEBVIEW_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$9 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_TEXTFIELD_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$10 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_SEARCHBAR_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$11 alloc] init]];
  [self register__WithNSString:FFTViewBehaviorFactory_SEGMENTED_CONTROL_ withFFTViewBehaviorFactory_ViewBehaviorBuilder:[[FFTViewBehaviorFactory_$12 alloc] init]];
}

- (FFTViewBehaviorTable *)getViewBehaviorTableWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  id<FFTViewBehaviorTable_RowProvider> provider = nil;
  if ([((id<FFTKeyValueList>) nil_chk(properties)) containsWithNSString:@"row-layout"] && [properties containsWithNSString:@"table-layout"]) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"May not use row-layout and table-layout at the same time."];
  }
  if ([properties containsWithNSString:@"row-layout"]) {
    provider = [self buildProviderForRowLayoutWithFFTKeyValueList:properties];
  }
  else if ([properties containsWithNSString:@"table-layout"]) {
    provider = [self buildProviderForTableLayoutWithFFTKeyValueList:properties];
  }
  else {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Must use row-layout or table-layout"];
  }
  return [[FFTViewBehaviorTable alloc] initWithFFTKeyValueList:properties withFFTViewBehaviorTable_RowProvider:provider];
}

- (id<FFTViewBehaviorTable_RowProvider>)buildProviderForRowLayoutWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  if (![((id<FFTKeyValueList>) nil_chk(properties)) containsWithNSString:@"key"]) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"row-layout expects a key for the data model array providing data for each row"];
  }
  NSString *rowLayout = [properties getValueWithNSString:@"row-layout"];
  NSString *key = [properties getValueWithNSString:@"key"];
  return [[FFTRowProviderRowLayout alloc] initWithNSString:key withNSString:rowLayout];
}

- (id<FFTViewBehaviorTable_RowProvider>)buildProviderForTableLayoutWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  FFTTableLayout *tableLayout = [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getViewManager])) getTableLayoutWithNSString:[((id<FFTKeyValueList>) nil_chk(properties)) getValueWithNSString:@"table-layout"]];
  id<FFTViewBehaviorTable_RowProvider> provider = [[FFTRowProviderTableLayout alloc] initWithFFTTableLayout:tableLayout];
  return provider;
}

- (void)copyAllFieldsTo:(FFTViewBehaviorFactory *)other {
  [super copyAllFieldsTo:other];
  other->viewBehaviorBuilders_ = viewBehaviorBuilders_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "ViewBehaviorFactory", NULL, 0x1, NULL },
    { "register__WithNSString:withFFTViewBehaviorFactory_ViewBehaviorBuilder:", "register", "V", 0x1, NULL },
    { "getViewBehaviorWithNSString:withFFTKeyValueList:", "getViewBehavior", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "registerDefaults", NULL, "V", 0x4, NULL },
    { "getViewBehaviorTableWithFFTKeyValueList:", "getViewBehaviorTable", "Lcom.sponberg.fluid.layout.ViewBehaviorTable;", 0x1, NULL },
    { "buildProviderForRowLayoutWithFFTKeyValueList:", "buildProviderForRowLayout", "Lcom.sponberg.fluid.layout.ViewBehaviorTable$RowProvider;", 0x2, NULL },
    { "buildProviderForTableLayoutWithFFTKeyValueList:", "buildProviderForTableLayout", "Lcom.sponberg.fluid.layout.ViewBehaviorTable$RowProvider;", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "SEGMENTED_CONTROL_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_SEGMENTED_CONTROL_,  },
    { "SEARCHBAR_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_SEARCHBAR_,  },
    { "TEXTFIELD_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_TEXTFIELD_,  },
    { "URL_WEBVIEW_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_URL_WEBVIEW_,  },
    { "WEBVIEW_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_WEBVIEW_,  },
    { "SUBVIEW_REPEAT_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_SUBVIEW_REPEAT_,  },
    { "SUBVIEW_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_SUBVIEW_,  },
    { "IMAGE_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_IMAGE_,  },
    { "SPACE_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_SPACE_,  },
    { "TABLE_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_TABLE_,  },
    { "BUTTON_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_BUTTON_,  },
    { "LABEL_", NULL, 0x19, "Ljava.lang.String;", &FFTViewBehaviorFactory_LABEL_,  },
    { "viewBehaviorBuilders_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory = { "ViewBehaviorFactory", "com.sponberg.fluid.parser", NULL, 0x1, 7, methods, 13, fields, 0, NULL};
  return &_FFTViewBehaviorFactory;
}

@end

@interface FFTViewBehaviorFactory_ViewBehaviorBuilder : NSObject
@end

@implementation FFTViewBehaviorFactory_ViewBehaviorBuilder

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x401, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_ViewBehaviorBuilder = { "ViewBehaviorBuilder", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_ViewBehaviorBuilder;
}

@end

@implementation FFTViewBehaviorFactory_$1

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorLabel alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$1 = { "$1", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$1;
}

@end

@implementation FFTViewBehaviorFactory_$2

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorButton alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$2 = { "$2", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$2;
}

@end

@implementation FFTViewBehaviorFactory_$3

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [this$0_ getViewBehaviorTableWithFFTKeyValueList:properties];
}

- (id)initWithFFTViewBehaviorFactory:(FFTViewBehaviorFactory *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "initWithFFTViewBehaviorFactory:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.sponberg.fluid.parser.ViewBehaviorFactory;", NULL,  },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$3 = { "$3", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_FFTViewBehaviorFactory_$3;
}

@end

@implementation FFTViewBehaviorFactory_$4

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorSpace alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$4 = { "$4", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$4;
}

@end

@implementation FFTViewBehaviorFactory_$5

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorImage alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$5 = { "$5", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$5;
}

@end

@implementation FFTViewBehaviorFactory_$6

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorSubview alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$6 = { "$6", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$6;
}

@end

@implementation FFTViewBehaviorFactory_$7

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorSubviewRepeat alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$7 = { "$7", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$7;
}

@end

@implementation FFTViewBehaviorFactory_$8

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorWebView alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$8 = { "$8", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$8;
}

@end

@implementation FFTViewBehaviorFactory_$9

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorURLWebView alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$9 = { "$9", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$9;
}

@end

@implementation FFTViewBehaviorFactory_$10

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorTextfield alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$10 = { "$10", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$10;
}

@end

@implementation FFTViewBehaviorFactory_$11

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorSearchbar alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$11 = { "$11", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$11;
}

@end

@implementation FFTViewBehaviorFactory_$12

- (FFTViewBehavior *)buildWithFFTKeyValueList:(id<FFTKeyValueList>)properties {
  return [[FFTViewBehaviorSegmentedControl alloc] initWithFFTKeyValueList:properties];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "buildWithFFTKeyValueList:", "build", "Lcom.sponberg.fluid.layout.ViewBehavior;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FFTViewBehaviorFactory_$12 = { "$12", "com.sponberg.fluid.parser", "ViewBehaviorFactory", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_FFTViewBehaviorFactory_$12;
}

@end