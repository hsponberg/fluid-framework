//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/parser/SettingsParser.java
//

#include "IOSObjectArray.h"
#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/HttpServiceWrapper.h"
#include "com/sponberg/fluid/ResourceService.h"
#include "com/sponberg/fluid/layout/ViewManager.h"
#include "com/sponberg/fluid/parser/SettingsParser.h"
#include "com/sponberg/fluid/util/KVLReader.h"
#include "com/sponberg/fluid/util/KeyValueList.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/List.h"

@implementation FFTSettingsParser

- (void)initialize__WithFFTFluidApp:(FFTFluidApp *)app {
  NSString *s = [((id<FFTResourceService>) nil_chk([((FFTFluidApp *) nil_chk(app)) getResourceService])) getResourceAsStringWithNSString:@"settings" withNSString:@"settings.txt"];
  if (s == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Unable to find settings.txt"];
  }
  NSString *colors = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:@"colors.txt"];
  if (colors == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Unable to find colors.txt"];
  }
  NSString *sizes = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:@"sizes.txt"];
  if (sizes == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Unable to find sizes.txt"];
  }
  NSString *fontsFileName = [NSString stringWithFormat:@"fonts@%@.txt", [app getPlatform]];
  NSString *fontsNames = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:fontsFileName];
  if (fontsNames == nil) {
    fontsFileName = @"fonts.txt";
    fontsNames = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:fontsFileName];
  }
  NSString *fontStylesFileName = [NSString stringWithFormat:@"font-styles@%@.txt", [app getPlatform]];
  NSString *fontStyles = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:fontStylesFileName];
  if (fontStyles == nil) {
    fontStylesFileName = @"font-styles.txt";
    fontStyles = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:fontStylesFileName];
  }
  @try {
    FFTKVLReader *reader = [[FFTKVLReader alloc] initWithNSString:s];
    NSString *platformSpecific = [NSString stringWithFormat:@"settings@%@.txt", [app getPlatform]];
    NSString *data = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"settings" withNSString:platformSpecific];
    if (data != nil) {
      FFTKVLReader *platformReader = [[FFTKVLReader alloc] initWithNSString:data];
      [reader overwriteSettingsFromWithFFTKeyValueListModifyable:platformReader];
    }
    if ([app getSettingsOverride] != nil) {
      [self parseModeSettingsWithFFTFluidApp:app withFFTKVLReader:reader withNSString:[app getSettingsOverride]];
    }
    else if ([reader containsWithNSString:@"mode"] && ![((NSString *) nil_chk([reader getValueWithNSString:@"mode"])) equalsIgnoreCase:@"release"]) {
      [self parseModeSettingsWithFFTFluidApp:app withFFTKVLReader:reader withNSString:[reader getValueWithNSString:@"mode"]];
    }
    [app setSettingsWithFFTKVLReader:reader];
    [self setDefaultsWithFFTFluidApp:app];
    FFTKVLReader *kvlColors = [[FFTKVLReader alloc] initWithNSString:colors];
    platformSpecific = [NSString stringWithFormat:@"colors@%@.txt", [app getPlatform]];
    data = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"" withNSString:platformSpecific];
    if (data != nil) {
      FFTKVLReader *platformReader;
      @try {
        platformReader = [[FFTKVLReader alloc] initWithNSString:data];
      }
      @catch (JavaIoIOException *e) {
        @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
      }
      [kvlColors overwriteSettingsFromWithFFTKeyValueListModifyable:platformReader];
    }
    [self setColorsWithFFTFluidApp:app withFFTKeyValueList:kvlColors];
    [self setSizesWithFFTFluidApp:app withFFTKeyValueList:[[FFTKVLReader alloc] initWithNSString:sizes]];
    if (fontsNames != nil) {
      FFTKVLReader *kvlFontsNames = [[FFTKVLReader alloc] initWithNSString:fontsNames];
      [self setFontsNamesWithFFTFluidApp:app withFFTKeyValueList:kvlFontsNames];
    }
    if (fontStyles != nil) {
      FFTKVLReader *kvlFontStyles = [[FFTKVLReader alloc] initWithNSString:fontStyles];
      [self setFontStylesWithFFTFluidApp:app withFFTKeyValueList:kvlFontStyles];
    }
  }
  @catch (JavaIoIOException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
  }
}

- (void)parseModeSettingsWithFFTFluidApp:(FFTFluidApp *)app
                        withFFTKVLReader:(FFTKVLReader *)reader
                            withNSString:(NSString *)mode {
  NSString *fileName = [NSString stringWithFormat:@"settings-%@.txt", mode];
  NSString *s = [((id<FFTResourceService>) nil_chk([((FFTFluidApp *) nil_chk(app)) getResourceService])) getResourceAsStringWithNSString:@"settings" withNSString:fileName];
  if (s == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Unable to find %@", fileName]];
  }
  FFTKVLReader *modeReader;
  @try {
    modeReader = [[FFTKVLReader alloc] initWithNSString:s];
  }
  @catch (JavaIoIOException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
  }
  [((FFTKVLReader *) nil_chk(reader)) overwriteSettingsFromWithFFTKeyValueListModifyable:modeReader];
  NSString *platformSpecific = [NSString stringWithFormat:@"settings-%@@%@.txt", mode, [app getPlatform]];
  NSString *data = [((id<FFTResourceService>) nil_chk([app getResourceService])) getResourceAsStringWithNSString:@"settings" withNSString:platformSpecific];
  if (data != nil) {
    FFTKVLReader *platformReader;
    @try {
      platformReader = [[FFTKVLReader alloc] initWithNSString:data];
    }
    @catch (JavaIoIOException *e) {
      @throw [[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e];
    }
    [reader overwriteSettingsFromWithFFTKeyValueListModifyable:platformReader];
  }
}

- (void)setDefaultsWithFFTFluidApp:(FFTFluidApp *)app {
  [app setDefaultsWithJavaUtilList:[((FFTKVLReader *) nil_chk([((FFTFluidApp *) nil_chk(app)) getSettings])) getWithNSString:@"defaults"]];
  NSString *mode = [app getDefaultWithNSString:@"http" withNSString:@"request-params-map-mode"];
  if (mode == nil) {
    mode = @"";
  }
  if ([((NSString *) nil_chk(mode)) equalsIgnoreCase:@"jsonify"]) {
    [app setHttpServiceRequestParametersMapModeWithFFTHttpServiceWrapper_MapModeEnum:FFTHttpServiceWrapper_MapModeEnum_get_Jsonify()];
  }
  else if ([mode equalsIgnoreCase:@"bracketify"]) {
    [app setHttpServiceRequestParametersMapModeWithFFTHttpServiceWrapper_MapModeEnum:FFTHttpServiceWrapper_MapModeEnum_get_Bracketify()];
  }
}

- (void)setColorsWithFFTFluidApp:(FFTFluidApp *)app
             withFFTKeyValueList:(id<FFTKeyValueList>)kvl {
  [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(app)) getViewManager])) setColorsByNameWithFFTKeyValueList:kvl];
}

- (void)setSizesWithFFTFluidApp:(FFTFluidApp *)app
            withFFTKeyValueList:(id<FFTKeyValueList>)kvl {
  [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(app)) getViewManager])) setSizesByNameWithFFTKeyValueList:kvl];
}

- (void)setFontsNamesWithFFTFluidApp:(FFTFluidApp *)app
                 withFFTKeyValueList:(id<FFTKeyValueList>)kvl {
  [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(app)) getViewManager])) setFontsByNameWithFFTKeyValueList:kvl];
}

- (void)setFontStylesWithFFTFluidApp:(FFTFluidApp *)app
                 withFFTKeyValueList:(id<FFTKeyValueList>)kvl {
  [((FFTViewManager *) nil_chk([((FFTFluidApp *) nil_chk(app)) getViewManager])) setFontStylesWithFFTKeyValueList:kvl];
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
    { "parseModeSettingsWithFFTFluidApp:withFFTKVLReader:withNSString:", "parseModeSettings", "V", 0x2, NULL },
    { "setDefaultsWithFFTFluidApp:", "setDefaults", "V", 0x2, NULL },
    { "setColorsWithFFTFluidApp:withFFTKeyValueList:", "setColors", "V", 0x2, NULL },
    { "setSizesWithFFTFluidApp:withFFTKeyValueList:", "setSizes", "V", 0x2, NULL },
    { "setFontsNamesWithFFTFluidApp:withFFTKeyValueList:", "setFontsNames", "V", 0x2, NULL },
    { "setFontStylesWithFFTFluidApp:withFFTKeyValueList:", "setFontStyles", "V", 0x2, NULL },
    { "getSupportedPlatforms", NULL, "[Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _FFTSettingsParser = { "SettingsParser", "com.sponberg.fluid.parser", NULL, 0x1, 9, methods, 0, NULL, 0, NULL};
  return &_FFTSettingsParser;
}

@end
